#include <ros/ros.h>
// MoveIt
#include <moveit/planning_scene_interface/planning_scene_interface.h>
#include <moveit/move_group_interface/move_group_interface.h>
// TF2
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>

// tau = 1 rotation in radiants
const double tau = 2 * M_PI;

int main(int argc, char** argv)
{
    ros::init(argc, argv, "pick_strawberry");
    ros::NodeHandle n;
    
    return 0;
}