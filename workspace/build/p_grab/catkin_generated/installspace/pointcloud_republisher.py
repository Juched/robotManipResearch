#!/usr/bin/env python3
import rospy
from std_msgs.msg import String
from sensor_msgs.msg import PointCloud2

pub = rospy.Publisher("/points2", PointCloud2, queue_size=10)

def callback(msg:PointCloud2):
    seq = msg.header.seq
    msg.header.stamp = rospy.Time.now()
    msg.header.seq = seq
    pub.publish(msg)
    
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