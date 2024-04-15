#include <ros/ros.h>
#include <std_msgs/String.h>
#include <geometry_msgs/PoseStamped.h>

ros::NodeHandle nh;
ros::Subscriber sub;
ros::Publisher pub;
std::string original_topic;

void callback(const geometry_msgs::PoseStamped::ConstPtr& msg) {
    geometry_msgs::PoseStamped modified_msg = *msg;
    modified_msg.header.frame_id = "rslidar"; 

    pub.publish(modified_msg);
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "topic_modifier_node");
    original_topic = "/rslidar_points";
    
    sub = nh.subscribe(original_topic, 10, callback);
    pub = nh.advertise<geometry_msgs::PoseStamped>("/rslidar_modified", 10);

    ros::spin();

    return 0;
}
