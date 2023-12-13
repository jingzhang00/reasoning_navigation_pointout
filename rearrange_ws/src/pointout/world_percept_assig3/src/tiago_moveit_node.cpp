#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/PointStamped.h>
#include <cstdlib>
#include <sstream>

geometry_msgs::PointStamped transformPoint(const tf::TransformListener& listener,
                                           const geometry_msgs::PointStamped& point_in,
                                           const std::string& target_frame) {
    geometry_msgs::PointStamped point_out;
    try {
        // using the latest available transform
        listener.waitForTransform(target_frame, point_in.header.frame_id, ros::Time(0), ros::Duration(3.0));
        listener.transformPoint(target_frame, point_in, point_out);
    } catch (tf::TransformException& ex) {
        ROS_ERROR("Received an exception trying to transform a point: %s", ex.what());
    }
    return point_out;
}

int main(int argc, char **argv) {
    // 首先执行特定的系统命令
    system("rosrun tiago_moveit_tutorial plan_arm_torso_fk  0.58 1.7 1.3  0 1 0 0 0");

    ros::init(argc, argv, "tiago_moveit_command_publisher");
    ros::NodeHandle nh;
    tf::TransformListener listener(ros::Duration(10.0));  // increase the buffer time to 10s
    ros::Rate rate(10.0);

    while (ros::ok()) {
        geometry_msgs::PointStamped coke_can_point;
        coke_can_point.header.frame_id = "map";
        coke_can_point.header.stamp = ros::Time(0);  // 或 ros::Time::now();
        coke_can_point.point.x = -1.14995;
        coke_can_point.point.y = -1.29267;
        coke_can_point.point.z = 0.574997;
        // 0.514, -0.534, 0.874

        geometry_msgs::PointStamped coke_can_point_footprint = transformPoint(listener, coke_can_point, "base_footprint");

        std::stringstream ss;
        ss << "rosrun tiago_moveit_tutorial plan_arm_torso_ik "
           << coke_can_point_footprint.point.x << " "
           << coke_can_point_footprint.point.y << " "
           << coke_can_point_footprint.point.z;
        //    << " 0 0 0"; // 角度未知，设为 0 0 0

        ROS_INFO("Executing command: %s", ss.str().c_str());
        int result = system(ss.str().c_str());
        if (result != 0) {
            ROS_ERROR("Failed to execute command");
        } else {
            // 如果MoveIt!命令执行成功，退出循环
            break;
        }

        rate.sleep();
    }

    return 0;
}
