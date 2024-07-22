#!/usr/bin/env python3

# This script subscribes to the apple positions detected by the intel d435 depth camera and triggers the required picking movement
# It is suitable for detecting and picking one apple at a time 

import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from math import pi
from std_msgs.msg import String
from moveit_commander.conversions import pose_to_list
import math
from std_msgs.msg import Int16MultiArray
import subprocess
from time import sleep

#######################
### Dova5 Positions ###
#######################
## Home
# current_pose = position: 
#   x: -0.005758477392764013
#   y: -0.22736070707008124
#   z: 0.667827263181062
# orientation: 
#   x: 0.007317379485133316
#   y: 0.7053885810684216
#   z: -0.7087698319710356
#   w: 0.004327926004414371
## Sitting 
# current_pose = position: 
#   x: -0.005758477392764013
#   y: -0.22736070707008124
#   z: 0.667827263181062
# orientation: 
#   x: 0.007317379485133316
#   y: 0.7053885810684216
#   z: -0.7087698319710356
#   w: 0.004327926004414371

VELOCITY_SCALING_SLOW = 0.005       # [%]
VELOCITY_SCALING_MEDIUM = 0.01     # [%]
VELOCITY_SCALING_FAST = 1.0         # [%]

GRIP_RELEASE = [0.0, 1000]                 # [m]
GRIP_GRAB = [0.025, 0]                   # [m]

GRIPPER_WAIT_TIME = 1               # [s]
ARM_WAIT_TIME = 1                   # [s]

BASE_OFFSET = 0.0                   # [m]
BOX_X = -0.5                        # [m]

TAU = 2*pi

wait_time: float = 0.0
apple_position: float = [0.0, 0.0, 0.0]
 
class Pose:
    def __init__(self, position_x: float, position_y: float, position_z: float,  
                 orientation_x: float, orientation_y: float, orientation_z: float, orientation_w: float):
        
        self.pose = geometry_msgs.msg.Pose()
        
        self.pose.position.x = position_x
        self.pose.position.y = position_y
        self.pose.position.z = position_z
        
        self.pose.orientation.x = orientation_x
        self.pose.orientation.y = orientation_y
        self.pose.orientation.z = orientation_z
        self.pose.orientation.w = orientation_w

def apple_position_callback(data):
    apple_position[0] = data.data[0]
    apple_position[1] = data.data[1]
    apple_position[2] = data.data[2]

def execute_target_movement_rrt(target):
    arm_group.set_pose_target(target.pose)
    plan = arm_group.go(wait=True)
    # Calling `stop()` ensures that there is no residual movement
    arm_group.stop()
    # It is always good to clear your targets after planning with poses.
    # Note: there is no equivalent function for clear_joint_value_targets()
    arm_group.clear_pose_targets()

def move_cartesion_path(waypoints, velocity_level):
    (plan, fraction) = arm_group.compute_cartesian_path(
                             waypoints,   # waypoints to follow
                             0.01,        # eef_step
                             0.0)         # jump_threshold
    if velocity_level == "SLOW":
        plan = arm_group.retime_trajectory(moveit_commander.RobotCommander().get_current_state(), 
                                       plan, VELOCITY_SCALING_SLOW, 1.0, "iterative_spline_parameterization")
    elif velocity_level == "MEDIUM":
        plan = arm_group.retime_trajectory(moveit_commander.RobotCommander().get_current_state(), 
                                       plan, VELOCITY_SCALING_MEDIUM, 1.0,"iterative_spline_parameterization")
    elif velocity_level == "HIGH":
        plan = arm_group.retime_trajectory(moveit_commander.RobotCommander().get_current_state(), 
                                       plan, VELOCITY_SCALING_FAST, 1.0, "time_optimal_trajectory_generation")

    arm_group.execute(plan, wait=True)

def go_gripper(pos):
                # Send command to real gripper via Modbus

        print(pos[1])
        try:
            subprocess.run(f"rosservice call /dobot_bringup/srv/SetHoldRegs \"index: 0\naddr: 259\ncount: 1\nvalTab: '{pos[1]}'\nvaltype: [\'U16\']\"", shell=True, check=True, text=True)
        except Exception as e:
            print(e) 

        # Send command to virtual gripper
        #rospy.loginfo(f'Going to Gripper Position {pos}')
        joint_goal_gripper = gripper_group.get_current_joint_values()
        joint_goal_gripper[0] = pos[0] #-0.018 box
        joint_goal_gripper[1] = pos[0] # 0.009
        gripper_group.go(joint_goal_gripper, wait=True)
        sleep(GRIPPER_WAIT_TIME)
        gripper_group.stop()
        #rospy.loginfo(f'Gripper Position Reached')
        
def main():
    velocity_level = "FAST"
    # stem_position[1] = float(input("\n\nGive Stem Position X [-0.3, 0.3]: "))
    # stem_position[1] = float(input("\n\nGive Stem Position Y [-0.3, -0,6]: "))
    # stem_position[2] = float(input("Give Stem Position Z [0.2,0.8]: "))

    # velocity_level = input("Give Velocity Level [SLOW, MEDIUM, FAST]: ")
    # print("\n\n")

    waypoints = []

    # Define eef position
    home_pose = Pose(0.00026002253772320987, -0.22332753530908966, 1.0900003577158324 + BASE_OFFSET, 
                    0.5009979642941825, -0.499001634720695, 0.5003982066123113, 0.49959988304476416)

    sitting_pose = Pose(-0.0056740140450384086, -0.22738736482103578, 0.6677977793838836 + BASE_OFFSET, 
                        0.5009979642941825, -0.499001634720695, 0.5003982066123113, 0.49959988304476416)

    sitting_joint_values = [6-TAU, 0.82, -2.286, -4.8+TAU, 0.279, -TAU/4]

    target_3_joint_values = [6-TAU*(5/4), 0.82, -2.286, -4.8+TAU, 0.279, -TAU/4]

    apple_position_check = None

    while True:
        if apple_position != apple_position_check:  # Only ask for permission for each apple position once
            apple_position_check = apple_position
            print(f'Apple Position: {apple_position_check}')
            is_picking_authorized = input("Should the apple be picked? (Y/N): ").upper()

            if is_picking_authorized == "Y":
                # Trigger gripper release at beginning of every trajectory for safety
                go_gripper(GRIP_RELEASE)

                # Go to sitting position first
                current_joint_values = arm_group.get_current_joint_values()
                if current_joint_values != sitting_joint_values:
                    arm_group.go(sitting_joint_values, wait=True)
                    sleep(ARM_WAIT_TIME)
                    arm_group.stop()

                # Calculate smallest rotation angle for local y-axis to intersect with z-axis of stem 
                stem_rotation = math.atan2(apple_position[1], apple_position[0]) + TAU/4
                stem_rotation_joint_values = [6-TAU+stem_rotation, 0.82, -2.286, -4.8+TAU, 0.279, -TAU/4]

                ## Figure out new poses
                # current_pose = arm_group.get_current_joint_values()
                # current_pose[5] = -TAU/4
                # arm_group.go(current_pose)
                # arm_group.go(current_pose, wait=True)
                # time.sleep(2)
                # arm_group.stop()
                # rotated_pose = arm_group.get_current_pose().pose
                # print(f'{rotated_pose = }')
                
                
                #######################
                ### HARVESTING PATH ###
                #######################
                
                ## Rotate to intersect local y axis with strawberry stem ##
                rospy.loginfo('\n\nSTEP 1:\tRotate to intersect local y axis with strawberry stem\n\n')
                arm_group.go(stem_rotation_joint_values, wait=True)   

                ## Go 3/4 to x- and y- and to z coordinate of stem ##
                rospy.loginfo('\n\nSTEP 2:\tGo 3/4 to x- and y- and to z coordinate of stem\n\n')
                current_pose = arm_group.get_current_pose().pose
                target_1_pose = Pose(apple_position[0]*(3/4), apple_position[1]*(3/4), current_pose.position.z, 
                                current_pose.orientation.x, current_pose.orientation.y, current_pose.orientation.z, current_pose.orientation.w)
                target_1_B_pose = Pose(apple_position[0]*(3/4), apple_position[1]*(3/4), apple_position[2], 
                                current_pose.orientation.x, current_pose.orientation.y, current_pose.orientation.z, current_pose.orientation.w)
                waypoints = []
                waypoints.append(target_1_pose.pose)
                waypoints.append(target_1_B_pose.pose)
                move_cartesion_path(waypoints,velocity_level)
                #arm_group.go(target_1_pose.pose, wait=True)

                ## Go to and grab stem ##
                rospy.loginfo('\n\nSTEP 3:\tGo to and grab stem\n\n')
                current_pose = arm_group.get_current_pose().pose
                target_2_pose = Pose(apple_position[0], apple_position[1], apple_position[2] + BASE_OFFSET, 
                            current_pose.orientation.x, current_pose.orientation.y, current_pose.orientation.z, current_pose.orientation.w)
                arm_group.go(target_2_pose.pose, wait=True)
                go_gripper(GRIP_GRAB)

                sleep(10)

                ## Pick strawberry ##
                rospy.loginfo('\n\nSTEP 4:\tPick strawberry\n\n')
                waypoints = []
                waypoints.append(target_1_B_pose.pose)
                waypoints.append(target_1_pose.pose)
                move_cartesion_path(waypoints, velocity_level)
                arm_group.go(sitting_joint_values, wait=True)
                arm_group.go(target_3_joint_values, wait=True)

                ## Deposit strawberry ##
                rospy.loginfo('\n\nSTEP 5:\tDeposit strawberry\n\n')
                current_pose = arm_group.get_current_pose().pose
                target_4_pose = Pose(current_pose.position.x+BOX_X , current_pose.position.y, current_pose.position.z, 
                                current_pose.orientation.x, current_pose.orientation.y, current_pose.orientation.z, current_pose.orientation.w)
                waypoints = []
                waypoints.append(copy.deepcopy(target_4_pose.pose))
                move_cartesion_path(waypoints, velocity_level)
                go_gripper(GRIP_RELEASE)

                ## Move back to sitting position ##
                rospy.loginfo('\n\nSTEP 6:\tMove back to sitting position\n\n')
                arm_group.go(target_3_joint_values, wait=True)
                arm_group.go(sitting_joint_values, wait=True)
                sleep(ARM_WAIT_TIME)
                arm_group.stop()
   
    rospy.loginfo('END OF NODE')
    rospy.signal_shutdown("Signal Shutdown")
    sys.exit()

if __name__ == "__main__":
    moveit_commander.roscpp_initialize(sys.argv)
    rospy.init_node('pick_apple', anonymous=True) 

    sub_apple_position = rospy.Subscriber("apple_coordinates", Int16MultiArray, apple_position_callback)
    # Instantiate a RobotCommander object. This object is the outer-level interface to the robot:
    robot = moveit_commander.RobotCommander()

    # Instantiate a PlanningSceneInterface object. This object is an interface to the world surrounding the robot:
    scene = moveit_commander.PlanningSceneInterface()

    # Instantiate a MoveGroupCommander object. This object is an interface to one group of joints. 
    # In this case the group is the joints in the Panda arm so we set group_name = panda_arm. 
    # If you are using a different robot, you should change this value to the name of your robot arm planning group. 
    # This interface can be used to plan and execute motions on the Panda:
    arm_group_name = "nova_arm"
    gripper_group_name = "gripper"
    arm_group = moveit_commander.MoveGroupCommander(arm_group_name)
    gripper_group = moveit_commander.MoveGroupCommander(gripper_group_name)

    # We create a DisplayTrajectory publisher which is used later to publish trajectories for RViz to visualize:
    display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path',
                                                moveit_msgs.msg.DisplayTrajectory,
                                                queue_size=20)

    # # We can get the name of the reference frame for this robot:
    # planning_frame = arm_group.get_planning_frame()
    # print("============ Reference frame: %s" % planning_frame)

    # # We can also print the name of the end-effector link for this group:
    # eef_link = arm_group.get_end_effector_link()
    # print("============ End effector: %s" % eef_link)

    # # We can get a list of all the groups in the robot:
    # group_names = robot.get_group_names()
    # print("============ Robot Groups:", robot.get_group_names())

    # Sometimes for debugging it is useful to print the entire state of the
    # robot:
    # print("============ Printing robot state")
    # print(robot.get_current_state())
    # current_pose = arm_group.get_current_pose().pose
    # print(f'{current_pose = }')

    ## Create Modbus Connection to DH Gripper
    
try:
    subprocess.run("rosservice call /dobot_bringup/srv/ModbusCreate \"ip: '192.168.5.1'\nport: 60000\nslave_id: 0\nis_rtu:\n- true\"", shell=True, check=True, text=True)
except Exception as e:
    print(e)  

try:
    subprocess.run("sleep 1", shell=True, check=True, text=True)
except Exception as e:
    print(e)  

try:
    subprocess.run("rosservice call /dobot_bringup/srv/SetHoldRegs \"index: 0\naddr: 256\ncount: 1\nvalTab: '165'\nvaltype: [\'U16\']\"", shell=True, check=True, text=True)
except Exception as e:
    print(e)  

try:
    subprocess.run("sleep 2", shell=True, check=True, text=True)
except Exception as e:
    print(e)  

try:
    subprocess.run("rosservice call /dobot_bringup/srv/SetHoldRegs \"index: 0\naddr: 259\ncount: 1\nvalTab: '1000'\nvaltype: [\'U16\']\"", shell=True, check=True, text=True)
except Exception as e:
    print(e)  

try:
    subprocess.run("sleep 1", shell=True, check=True, text=True)
except Exception as e:
    print(e)  

try:
    subprocess.run("rosservice call /dobot_bringup/srv/SetHoldRegs \"index: 0\naddr: 259\ncount: 1\nvalTab: '000'\nvaltype: [\'U16\']\"", shell=True, check=True, text=True)
except Exception as e:
    print(e)  

try:
    subprocess.run("sleep 1", shell=True, check=True, text=True)
except Exception as e:
    print(e)  

try:
    subprocess.run("rosservice call /dobot_bringup/srv/SetHoldRegs \"index: 0\naddr: 259\ncount: 1\nvalTab: '1000'\nvaltype: [\'U16\']\"", shell=True, check=True, text=True)
except Exception as e:
    print(e)  


    main()