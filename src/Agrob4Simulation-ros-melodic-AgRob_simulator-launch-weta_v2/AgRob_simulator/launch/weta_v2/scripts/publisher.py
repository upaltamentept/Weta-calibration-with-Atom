#!/usr/bin/env python

import rospy
from sensor_msgs.msg import PointCloud2
#from geometry_msgs.msg import PoseStamped

def callback(msg):
    modified_msg = PointCloud2()
    modified_msg.data = msg.data
    modified_msg.header = msg.header
    modified_msg.header.frame_id = "rslidar"  # Changing the frame ID
    

    # Additional modifications can be made here if necessary
    pub.publish(modified_msg)

if __name__ == '__main__':
    rospy.init_node('topic_modifier_node')
    original_topic = "/rslidar_points"
    
    sub = rospy.Subscriber(original_topic, PointCloud2, callback)
    pub = rospy.Publisher("/rslidar_points_modified", PointCloud2, queue_size=10)

    rospy.spin()