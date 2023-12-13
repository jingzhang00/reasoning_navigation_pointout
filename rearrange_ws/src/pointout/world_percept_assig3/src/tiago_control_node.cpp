#include <ros/ros.h>
#include <iostream>
#include <string>
#include <sstream>
#include <iostream>
#include <fstream>
#include "Eigen/Dense"
#include <tf2/LinearMath/Quaternion.h>
#include <tf2_ros/transform_broadcaster.h>
#include <rosprolog/rosprolog_client/PrologClient.h>

#include <world_percept_assig3/GoToObject.h>
#include "geometry_msgs/Twist.h"
#include "world_percept_assig3/GetSceneObjectList.h"
#include "world_percept_assig3/UpdateObjectList.h"




using namespace std;

class tiago_control_node
{
private:

    std::string target_object_name_;        ///store rosservice call obj name

    std::string subs_topic_name_;        ///< gazebo model state topic name
    ros::Subscriber sub_gazebo_data_;     ///< Subscriber gazebo model_states

    std::string pub_topic_name_;        ///< gazebo model state topic name
    ros::Publisher pub_gazebo_data_;     ///< Subscriber gazebo model_states


    std::string client_get_scene_object_list_name_;
    ros::ServiceClient client_get_scene_object_list_;


    ros::ServiceServer server_go_to_object_;  // Add the service server

    geometry_msgs::Pose target_pose_; //store the pose of the target object

    geometry_msgs::Twist tiago_twist_cmd_; 
     //This is the message that will be published to the topic /key_vel
    geometry_msgs::Pose tiago_pose;
public:
    tiago_control_node(ros::NodeHandle& nh){
        ROS_WARN_STREAM("Created world info");

        subs_topic_name_="/gazebo/model_states";
        sub_gazebo_data_ = nh.subscribe(subs_topic_name_, 100, &tiago_control_node::topic_callback, this);

        pub_topic_name_="/key_vel";
        pub_gazebo_data_ = nh.advertise<geometry_msgs::Twist>(pub_topic_name_, 100);


        //Once client that will be inside the callback function of the subscriber.This client will also connect to a service inside the node (2 pts) “map_generator_node”
        client_get_scene_object_list_name_ = "get_scene_object_list";
        client_get_scene_object_list_=nh.serviceClient<world_percept_assig3::GetSceneObjectList>(client_get_scene_object_list_name_);

        //define the GoToObject service
        server_go_to_object_ = nh.advertiseService("go_to_object", &tiago_control_node::srv_go_to_object_callback, this);

    };
    ~tiago_control_node(){

    };
    Eigen::Matrix2d q2Rot2D(const geometry_msgs::Quaternion& quaternion){
        Eigen::Quaterniond eigen_quaternion(quaternion.w, quaternion.x, quaternion.y, quaternion.z);
        Eigen::Matrix2d rotation_matrix = eigen_quaternion.toRotationMatrix().block(0, 0, 2, 2);
        return rotation_matrix;
    
    }

private:

    bool srv_go_to_object_callback(world_percept_assig3::GoToObject::Request& req,
                                world_percept_assig3::GoToObject::Response& res) {
        std::string target_object_name = req.target_name;
        world_percept_assig3::GetSceneObjectList srv;
        srv.request.object_name = target_object_name;

        if (!client_get_scene_object_list_.call(srv)) {
            ROS_ERROR("Failed to call service to get object pose.");
            res.success = false;
            return true;
        }

        if (!srv.response.obj_found || srv.response.objects.pose.empty()) {
            ROS_ERROR("Object not found or object pose is empty.");
            res.success = false;
            return true;
        }

        // Get the pose of the target object
        target_pose_ = srv.response.objects.pose[0];
        ROS_INFO("Received pose for target object: %s", target_object_name.c_str());
        ROS_INFO("Target pose: x: %f, y: %f", target_pose_.position.x, target_pose_.position.y);

        ros::Rate loop_rate(10); // Loop at 10 Hz
        float threshold = 0.3; // Distance threshold in meters

        while (ros::ok()) {
            // Get Tiago's x and y position
            Eigen::Vector2d tiago_position(tiago_pose.position.x, tiago_pose.position.y);
            //rosinfo for tiago pos
            ROS_INFO("Tiago pose: x: %f, y: %f", tiago_pose.position.x, tiago_pose.position.y);

            // Assuming target_pose_ is the pose of the target obtained from the service
            // Get the x and y position of the target
            Eigen::Vector2d target_position(target_pose_.position.x, target_pose_.position.y);

            // Calculate the distance between Tiago and the target with vector2d in world frame
            Eigen::Vector2d Dpose_w = target_position - tiago_position;
            //calcualte the distance between Tiago and the target
            float d = Dpose_w.norm();
            //get tiago quaternion
            geometry_msgs::Quaternion tiago_quaternion=tiago_pose.orientation;
            //get the rotation matrix
            Eigen::Matrix2d Rtiago_w=q2Rot2D(tiago_quaternion);
            Eigen::Matrix2d Rw_tiago=Rtiago_w.inverse();

            //calculate the distance between Tiago and the target with vector2d in tiago frame
            Eigen::Vector2d Dpose_tiago=Rw_tiago*Dpose_w;
            //calculate the angle between Tiago and the target
            float theta=std::atan2(Dpose_tiago(1),Dpose_tiago(0));
            float distance_to_target = Dpose_tiago.norm();
            
            
            if (distance_to_target < threshold) {
                ROS_INFO("Arrived at the target.");
                break; // Target reached
            }
            // Publish velocity command based on distance and angle
            float Kwz=1.1, Kvx=0.1;
            float w=Kwz*theta;
            float v=Kvx*distance_to_target;
            tiago_twist_cmd_.linear.x = v;
            tiago_twist_cmd_.angular.z = w;

            pub_gazebo_data_.publish(tiago_twist_cmd_);

            ros::spinOnce();
            loop_rate.sleep(); // Maintain the loop rate
        }

        // Set the response to indicate success
        res.success = true;
        return true;
    }



    void topic_callback(const gazebo_msgs::ModelStates::ConstPtr& msg) {
        // Search for Tiago pose
        
        auto it = std::find(msg->name.begin(), msg->name.end(), "tiago");
        if (it != msg->name.end()) {
            // Calculate the index
            int index = std::distance(msg->name.begin(), it);
            tiago_pose = msg->pose.at(index);
        } else {
            ROS_ERROR("Tiago not found in ModelStates.");
            return;
        }

    }

};




int main(int argc, char **argv)
{
    // Initialize the ROS node
    ros::init(argc, argv, "tiago_control_node");
    ros::NodeHandle nh;
    // Create the control node
    tiago_control_node tiagoControlNode(nh);

    ros::spin();

    return 0;
}

// #include<iostream>

// int main(){
//     std::cout<<"Hello World"<<std::endl;
//     return 0;
// }   