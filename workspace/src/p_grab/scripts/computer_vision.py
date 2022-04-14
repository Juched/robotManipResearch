#!/usr/bin/env python
import numpy as np

import rospy
from std_msgs.msg import String

import rospy
import octomap


def receive_pointcloud2_msg(pointcloud):
    timestamp = None
    if timestamp is None: # if the timestamp is not similar to that of the image we got from our service, do nothing
        return

    # find point cloud within octomap
    # segment with openCV -- temporarily remove indices that are NOT applicable -- call this a query
    # run each segments query on gpd_ros
    return


def find_grab_points(octomap):

    return

def retrieve_pointcloud():
    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # run simultaneously.
    # name for our 'listener' node so that multiple listeners can

    # listen on  service callback, only receive 1 image message
    # wait for pointcloud to have similar timestamp
    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber("/stereo/points2", String, receive_pointcloud2_msg)


    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

class ObjectGrabber:
    def __init__(self) -> None:
        pass

if __name__ == '__main__':
    x = 2




