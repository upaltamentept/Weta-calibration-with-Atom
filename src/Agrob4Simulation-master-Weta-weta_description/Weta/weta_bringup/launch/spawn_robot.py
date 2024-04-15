#!/usr/bin/python3
# -*- coding: utf-8 -*-
import os
import sys
import rclpy
from gazebo_msgs.srv import SpawnEntity
from geometry_msgs.msg import Pose

def main(args=None):
    rclpy.init(args=args)
    node = rclpy.create_node('minimal_client')
    cli = node.create_client(SpawnEntity, '/spawn_entity')

    content = sys.argv[1]
    
    pose_goal = Pose()
    pose_goal.position.x = -30.0
    pose_goal.position.y = 0.0
    pose_goal.position.z = 55.0
    pose_goal.orientation.y = 0.0
    pose_goal.orientation.x = 0.0
    pose_goal.orientation.z = 0.0
    pose_goal.orientation.w = 1.0


    req = SpawnEntity.Request()
    req.name = "box_bot"
    req.xml = content
    req.robot_namespace = ""
    req.reference_frame = "world"
    req.initial_pose = pose_goal

    while not cli.wait_for_service(timeout_sec=1.0):
        node.get_logger().info('service not available, waiting again...')

    future = cli.call_async(req)
    rclpy.spin_until_future_complete(node, future)

    if future.result() is not None:
        node.get_logger().info(
            'Result ' + str(future.result().success) + " " + future.result().status_message)
    else:
        node.get_logger().info('Service call failed %r' % (future.exception(),))

    node.destroy_node()
    rclpy.shutdown()


if __name__ == '__main__':
    main()
