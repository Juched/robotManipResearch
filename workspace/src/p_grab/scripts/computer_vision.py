#!/usr/bin/env python
import numpy as np

import rospy
from std_msgs.msg import String

import octomap


def pointcloud_to_octomap(pointcloud):

    return


def find_grab_points(octomap):

    return


def retrieve_pointcloud():
    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # run simultaneously.
    # name for our 'listener' node so that multiple listeners can
    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber("chatter", String, pointcloud_to_octomap)


    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()