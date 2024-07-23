#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>
#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit_msgs/DisplayRobotState.h>
#include <moveit_msgs/DisplayTrajectory.h>
#include <moveit_msgs/AttachedCollisionObject.h>
#include <moveit_msgs/CollisionObject.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
const double tau = 2 * M_PI;

int main(int argc, char **argv)
{
    ros::init(argc, argv, "move_group_interface_tutorial");
    ros::NodeHandle nh;
    ros::AsyncSpinner spinner(1);
    spinner.start();

    sleep(2.0);

    moveit::planning_interface::MoveGroupInterface group("nova_arm");
    moveit::planning_interface::PlanningSceneInterface planning_scene_interface;

    ros::Publisher display_publisher = nh.advertise<moveit_msgs::DisplayTrajectory>("/move_group/display_planned_path", 1, true);
    moveit_msgs::DisplayTrajectory display_trajectory;

    group.setPoseReferenceFrame("base_link");

    // // Define the Panther platform as a collision object
    // moveit_msgs::CollisionObject platform;
    // platform.header.frame_id = "base_link";
    // platform.id = "platform";

    // Define the size and the position of the platform with the respect of the frame of the base link of the robot
    // shape_msgs::SolidPrimitive primitive;
    // primitive.type= primitive.BOX;
    // primitive.dimensions.resize(3);
    // primitive.dimensions[0]= 0.8; // length
    // primitive.dimensions[0]= 0.8; // width
    // primitive.dimensions[0]= 0.4; // height

    // geometry_msgs::Pose platform_pose;
    // platform_pose.orientation.w = 1.0;
    // platform_pose.position.x = 0.0;
    // platform_pose.position.y = 0.0;
    // platform_pose.position.z = -0.2;

    // platform.primitives.push_back(primitive);
    // platform.primitive_poses.push_back(platform_pose);
    // platform.operation = platform.ADD;




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


    // Target position
    geometry_msgs::Pose target_pose1;
    tf2::Quaternion orientation;
    orientation.setRPY(-tau/4, 0, -tau);
    target_pose1.orientation = tf2::toMsg(orientation);
    target_pose1.position.x = 0.0;
    target_pose1.position.y = -0.8;
    target_pose1.position.z = 0.0245;
    group.setPoseTarget(target_pose1, "picking_point");

    // visualize the planning
    moveit::planning_interface::MoveGroupInterface::Plan my_plan;
    moveit::planning_interface::MoveItErrorCode success = group.plan(my_plan);
    ROS_INFO("visualizeing plan %s", success.val ? "":"FAILED");

    // move the group arm
    group.move();

    ros::shutdown();
    return 0;

}