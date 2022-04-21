#!/usr/bin/env python
import rospy
from std_msgs.msg import String

import sensor_msgs
from sensor_msgs.msg import PointCloud2
from gpd_ros.msg import CloudSamples
# import ros_numpy

MIN_Z = 2

pub = rospy.Publisher("/points2", PointCloud2, queue_size=10)

def callback(msg:PointCloud2):
    seq = msg.header.seq
    msg.header.stamp = rospy.Time.now()
    msg.header.seq = seq

    cloud_sample = CloudSamples()

    for point in sensor_msgs.point_cloud2.read_points(msg, skip_nans=True):
        if point[2] >= MIN_Z:
            cloud_sample.samples.append(point)

    # msg.header.stamp
    # msg.header.seq = seq


    pub.publish(cloud_sample)

def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('pointcloud_republisher', anonymous=True)

    rospy.Subscriber("/stereo/points2", PointCloud2, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()