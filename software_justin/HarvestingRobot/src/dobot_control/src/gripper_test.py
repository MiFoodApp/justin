#!/usr/bin/env python3
# Python 2/3 compatibility imports
from __future__ import print_function
from six.moves import input
from squaternion import Quaternion
import sys, time, signal, rospy, moveit_commander, moveit_msgs.msg, geometry_msgs.msg
from geometry_msgs.msg import Point
from std_msgs.msg import Bool, Float32MultiArray


def signal_handler(sig, frame):
    rospy.loginfo(f"Exiting")
    sys.exit(0)

from math import pi, tau, dist, fabs, cos, atan2, sqrt, pow, sin

tau = 2.0 * pi

def dist(p, q):
    return sqrt(sum((p_i - q_i) ** 2.0 for p_i, q_i in zip(p, q)))


from std_msgs.msg import String
from moveit_commander.conversions import pose_to_list

def all_close(goal, actual, tolerance):
    """
    Convenience method for testing if the values in two lists are within a tolerance of each other.
    For Pose and PoseStamped inputs, the angle between the two quaternions is compared (the angle
    between the identical orientations q and -q is calculated correctly).
    @param: goal       A list of floats, a Pose or a PoseStamped
    @param: actual     A list of floats, a Pose or a PoseStamped
    @param: tolerance  A float
    @returns: bool
    """
    if type(goal) is list:
        for index in range(len(goal)):
            if abs(actual[index] - goal[index]) > tolerance:
                return False

    elif type(goal) is geometry_msgs.msg.PoseStamped:
        return all_close(goal.pose, actual.pose, tolerance)

    elif type(goal) is geometry_msgs.msg.Pose:
        x0, y0, z0, qx0, qy0, qz0, qw0 = pose_to_list(actual)
        x1, y1, z1, qx1, qy1, qz1, qw1 = pose_to_list(goal)
        # Euclidean distance
        d = dist((x1, y1, z1), (x0, y0, z0))
        # phi = angle between orientations
        cos_phi_half = fabs(qx0 * qx1 + qy0 * qy1 + qz0 * qz1 + qw0 * qw1)
        return d <= tolerance and cos_phi_half >= cos(tolerance / 2.0)

    return True


class MoveGroupHandControl(object):

    def __init__(self):
        super(MoveGroupHandControl, self).__init__()
        moveit_commander.roscpp_initialize(sys.argv)
        rospy.init_node("control_hand", anonymous=False, log_level=rospy.DEBUG)
        robot                          = moveit_commander.RobotCommander()
        scene                          = moveit_commander.PlanningSceneInterface()
        group_name                     = "nova_arm"
        gripper_name                   = "gripper"
        move_hand                      = moveit_commander.MoveGroupCommander(group_name)
        # move_hand.set_planner_id("TRRT")
        # Replanning
        # move_hand.allow_replanning(False)
        # move_hand.set_goal_tolerance(0.005)
        # move_hand.set_num_planning_attempts(100)
        # move_hand.set_planning_time(15)

        move_gripper                    = moveit_commander.MoveGroupCommander(gripper_name)
        display_trajectory_publisher    = rospy.Publisher(
                                            "/move_hand/display_planned_path",
                                            moveit_msgs.msg.DisplayTrajectory,
                                            queue_size=20,
                                            )
        joint_constraint                 = moveit_msgs.msg.JointConstraint()
        joint_constraint.joint_name      = "joint2"
        joint_constraint.position        = -1.93  # Specify the minimum allowed position for joint 2
        joint_constraint.tolerance_above = 3.86  # Specify tolerance above the position
        joint_constraint.tolerance_below = 0.0  # Specify tolerance below the position
        joint_constraint.weight          = 0.01  # Specify the importance weight of the constraint
        # Create a Constraints message and add the joint constraint to it
        constraints                      = moveit_msgs.msg.Constraints()
        constraints.joint_constraints.append(joint_constraint)
        # move_hand.set_path_constraints(constraints)

        self.target_sub                  = rospy.Subscriber('/target_point', Float32MultiArray, self.target_pose_cb)
        self.go_to_home_sub              = rospy.Subscriber('/go_to_home', Bool, self.go_to_home)
        self.target_success              = rospy.Publisher('/target_success', Bool, queue_size=10)
        planning_frame                   = move_hand.get_planning_frame()
        eef_link                         = move_hand.get_end_effector_link()
        group_names                      = robot.get_group_names()
        self.box_name                    = ""
        self.robot                       = robot
        self.scene                       = scene
        self.move_hand                   = move_hand
        self.move_gripper                = move_gripper
        self.display_trajectory_publisher= display_trajectory_publisher
        self.planning_frame              = planning_frame
        self.eef_link                    = eef_link
        self.group_names                 = group_names
        self.target_pose                 = Point()
        select                           = 2
        self.pos_hand_values             = [[0.53, -0.03], [0.678, -0.03], [0.35, -0.015]] #bottle 0.678 -0.015 | #box 0.645 -0.018
        self.gripper_pos_val             = self.pos_hand_values[select][1]
        self.hand_pos_val                = self.pos_hand_values[select][0]
        self.goal_acquired               = False
        self.execution_states            = ['Picking Loop', 'Dropping Loop']
        grip_release_dist                = -0.07
        grip_grap_dist                   = -0.018
        self.init_sequence               = True
        self.previous_pose               = 0
        self.gripper_position            = {0: [grip_release_dist, grip_grap_dist], 1: [grip_grap_dist, grip_release_dist]}
        self.wrist_height                = {0: [0.26, 0.21], 1: [0.50, 0.25]}

    def go_to_home(self, msg):
        self.go_to_joint_state()

    def target_pose_cb(self, msg):
        target_pose = msg.data
        for execution_loop_index in range(2):
            rospy.logdebug(f'{self.execution_states[execution_loop_index]}')
            self.go_gripper(self.gripper_position[execution_loop_index][0])
            if not self.init_sequence:
                normal_height_pose = self.previous_pose if execution_loop_index == 0 else target_pose
                self.go_to_pose_goal(180, False, normal_height_pose, 0.50, int(not(execution_loop_index)))
            for heights_index in range(len(self.wrist_height[execution_loop_index])):
                self.go_to_pose_goal(180, False, target_pose, self.wrist_height[execution_loop_index][heights_index], execution_loop_index)
            self.go_gripper(self.gripper_position[execution_loop_index][1])
            self.previous_pose = target_pose
            time.sleep(5)
            self.init_sequence = False
        for i in range(2):
            self.target_success.publish(True)
            time.sleep(0.5)
        

    def go_to_joint_state(self):
        rospy.loginfo(f'Going to Joint Goal')
        move_hand = self.move_hand
        joint_goal = move_hand.get_current_joint_values()
        joint_goal[0] = 0/57.3
        joint_goal[1] = 0/57.3
        joint_goal[2] = 0/57.3
        joint_goal[3] = 0/57.3
        joint_goal[4] = 0/57.3
        joint_goal[5] = 0/57.3
        move_hand.go(joint_goal, wait=True)
        move_hand.stop()
        current_joints = move_hand.get_current_joint_values()
        rospy.loginfo(f'Joint Goal Reached')
        return all_close(joint_goal, current_joints, 0.01)
    
    def go_gripper(self, pos):
        rospy.loginfo(f'Going to Gripper Position {pos}')
        move_gripper = self.move_gripper
        joint_goal_gripper = move_gripper.get_current_joint_values()
        joint_goal_gripper[0] = pos #-0.018 box
        joint_goal_gripper[1] = pos # 0.009
        move_gripper.go(joint_goal_gripper, wait=True)
        time.sleep(2)
        move_gripper.stop()
        rospy.loginfo(f'Gripper Position Reached')

    def go_to_pose_goal(self, pitch, inital_grasp, target_pose, height, i):
        x_coordinate = target_pose[0 + (3*i)]
        y_coordinate = target_pose[1 + (3*i)]
        z_coordinate = height
        rospy.logdebug(f'Going to Goal Pose {x_coordinate, y_coordinate, z_coordinate, pitch}')
        angles = [0, pitch, 0]  # [ROLL]
        q = self.euler_to_quaternion(angles[0], angles[1], angles[2])
        # pose = [0.535394+self.inc, 0.003928, 0.727912]
        # pose = [self.hand_pos_val, 0.003928, 0.50] #0.53 first pos, #0.645 box , 0.683 bottle
        
        angle = atan2(y_coordinate, x_coordinate)
        r_com = sqrt(pow(x_coordinate,2)+pow(y_coordinate,2))
        # pose = [0.549909, -0.015200, 0.530693] if inital_grasp == True else [ 0.664865, -0.018378, 0.530693]
        margin_factor = 0.25 if inital_grasp == True else 0.0#0.035+0.08
        r_revised = r_com - margin_factor
        x_rev = r_revised*cos(angle) ; y_rev = r_revised*sin(angle)
        pose = [x_rev, y_rev, z_coordinate]
        # rospy.loginfo(f'Tran: {pose[0]:2f} {pose[1]:2f} {pose[2]:2f} Angle: {angle} Initial_Grasp {inital_grasp}')
        # rospy.loginfo(f'Tran_rev: {x_rev:2f} {y_rev:2f} {pose[2]:2f}')
        move_hand = self.move_hand
        pose_goal = geometry_msgs.msg.Pose()
        pose_goal.orientation = q
        pose_goal.position.x = pose[0]
        pose_goal.position.y = pose[1]
        pose_goal.position.z = pose[2]
        move_hand.set_pose_target(pose_goal)
        time.sleep(1.0)
        success = move_hand.go(wait=True)
        move_hand.stop()
        move_hand.clear_pose_targets()
        current_pose = move_hand.get_current_pose().pose
        rospy.logdebug(f'Goal Pose Reached')
        return all_close(pose_goal, current_pose, 0.01)

    def quaternion_to_euler(self, w, x, y, z):
        # Quaternion(w, x, y, z)
        q = Quaternion(w,x,y,z)
        e = q.to_euler(degrees=True)
        return e
    
    def euler_to_quaternion(self, r, p, y):
        # euler angles from_eluer(roll, pitch, yaw), default is radians, but set
        # degrees true if giving degrees
        q = Quaternion.from_euler(r, p, y, degrees=True)
        return q

def main():
    control_ins = MoveGroupHandControl()
    signal.signal(signal.SIGINT, signal_handler)
    # control_ins.go_to_joint_state()
    # control_ins.go_gripper(-0.06)
    # control_ins.go_to_pose_goal(180, False, [-0.3923477530479431, -0.411111056804657, 0.20], 0.25, 0)
    # control_ins.go_gripper(-0.04)
    # control_ins.go_to_pose_goal(True)
    # control_ins.go_to_pose_goal(False)
    control_ins.go_gripper(0.0)
    time.sleep(5)
    control_ins.go_gripper(0.025)
    # time.sleep(5)
    # control_ins.go_to_joint_state()
    # control_ins.go_gripper(-0.04)
    #rospy.spin()

if __name__ == "__main__":
    main()