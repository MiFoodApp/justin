#include <ros/ros.h>
// MoveIt
#include <moveit/planning_scene_interface/planning_scene_interface.h>
#include <moveit/move_group_interface/move_group_interface.h>
// TF2
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <position_tracker/GetPosition.h>

// tau = 1 rotation in radiants
const double tau = 2 * M_PI;

class Pick_And_Place
{
public:
    Pick_And_Place()
    {
        // Class constructor
        
        client_picking_pose = nh.serviceClient<position_tracker::GetPosition>("/get_position");
        
    }

    void close_gripper(moveit::planning_interface::MoveGroupInterface& move_gripper)
    {
        move_gripper.setJointValueTarget("finger1_joint", 0.02);
        move_gripper.move();
    }

    void open_gripper(moveit::planning_interface::MoveGroupInterface& move_gripper)
    {
        move_gripper.setJointValueTarget("finger1_joint", 0.0);
        move_gripper.move();
    }



    // void pre_pick(moveit::planning_interface::MoveGroupInterface& move_group)
    // {
        
    //     orientation.setRPY(tau/4, - tau/4, 0);
    //     pre_pick_position.orientation = tf2::toMsg(orientation);
      
    //     service.request.get_position = true;

    //     if (client_picking_pose.call(service))
    //     {
    //         pre_pick_position.position.x = service.response.x_position;
    //         pre_pick_position.position.y = service.response.y_position + 0.15;
    //         pre_pick_position.position.z = service.response.z_position;
            
    //     }
    //     else
    //     {
    //         ROS_WARN("Service failed :( ");
    //     }

    //     move_group.setPoseTarget(pre_pick_position, "picking_point");
    //     move_group.move();

    // }
   
    void pick(moveit::planning_interface::MoveGroupInterface& move_group)
    {
        
        orientation.setRPY(-tau/4, 0, -tau);
        pick_position.orientation = tf2::toMsg(orientation);
        
        service.request.get_position = true;

        if (client_picking_pose.call(service))
        {
            pick_position.position.x = service.response.x_position;
            pick_position.position.y = service.response.y_position;
            pick_position.position.z = service.response.z_position;
            
        }
        else
        {
            ROS_WARN("Service failed :( ");
        }

        move_group.setPoseTarget(pick_position, "picking_point");

        move_group.move();

    }
    void place(moveit::planning_interface::MoveGroupInterface& move_group_place)
    {
        
        orientation.setRPY(-tau/4, 0, -tau);
        place_position.orientation = tf2::toMsg(orientation);
        place_position.position.x = 0.5;
        place_position.position.y = -0.5;
        place_position.position.z = 0.5;
        move_group_place.setPoseTarget(place_position, "picking_point");

        move_group_place.move();

    }

private:
    ros::NodeHandle nh;
    
    geometry_msgs::Pose pre_pick_position;
    geometry_msgs::Pose pick_position;
    geometry_msgs::Pose place_position;
    tf2::Quaternion orientation;
    ros::ServiceClient client_picking_pose;
    // Initialize the service
    position_tracker::GetPosition service;

    
};

void addCollisionObject(moveit::planning_interface::PlanningSceneInterface& planning_scene_interface)
{
    std::vector<moveit_msgs::CollisionObject> collision_objects;
    collision_objects.resize(1);

    // Add the first table
    collision_objects[0].id = "platform";
    collision_objects[0].header.frame_id = "base_link";

    // Define primitive dimension, position of the table 1
    collision_objects[0].primitives.resize(1);
    collision_objects[0].primitives[0].type = collision_objects[0].primitives[0].BOX;
    collision_objects[0].primitives[0].dimensions.resize(3);
    collision_objects[0].primitives[0].dimensions[0] = 0.8;
    collision_objects[0].primitives[0].dimensions[1] = 0.8;
    collision_objects[0].primitives[0].dimensions[2] = 0.4;
    // pose of table 1
    collision_objects[0].primitive_poses.resize(1);
    collision_objects[0].primitive_poses[0].position.x = 0;
    collision_objects[0].primitive_poses[0].position.y = 0;
    collision_objects[0].primitive_poses[0].position.z = -0.2;
    collision_objects[0].primitive_poses[0].orientation.w = 1.0;
    // Add tabe 1 to the scene
    collision_objects[0].operation = collision_objects[0].ADD;


    // Add the platform to the planning scene
    planning_scene_interface.applyCollisionObjects(collision_objects);
}

int main (int argc, char **argv)
{
    ros::init(argc, argv, "dobot_pick_and_place");

    ros::NodeHandle nh;
    ros::AsyncSpinner spinner(1);
    spinner.start();

    ros::WallDuration(1.0).sleep();
    moveit::planning_interface::PlanningSceneInterface planning_scene_interface;
    moveit::planning_interface::MoveGroupInterface group("nova_arm");
    moveit::planning_interface::MoveGroupInterface gripper("gripper");
    group.setPoseReferenceFrame("base_link");
    group.setPlanningTime(45.0);
    addCollisionObject(planning_scene_interface);
    ros::WallDuration(1.0).sleep();

    Pick_And_Place Pick_place;

    //Pick_place.pre_pick(group);
    //ros::WallDuration(1.0).sleep();
    Pick_place.pick(group);
    ros::WallDuration(1.0).sleep();
    Pick_place.close_gripper(gripper);
    ros::WallDuration(1.0).sleep();
    Pick_place.place(group);
    ros::WallDuration(1.0).sleep();
    Pick_place.open_gripper(gripper);

    ros::waitForShutdown();
    return 0;
}