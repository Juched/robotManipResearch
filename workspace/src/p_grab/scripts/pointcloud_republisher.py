#!/usr/bin/env python
import rospy
from std_msgs.msg import String
import tf2_ros
from geometry_msgs.msg import Point
from tf2_sensor_msgs.tf2_sensor_msgs import do_transform_cloud
import sensor_msgs.point_cloud2 as pc2 # ugh this line, needed to explicitly say
from sensor_msgs.msg import PointCloud2  # whole thing as opposed to jsut senser_msgs
from gpd_ros.msg import CloudSamples
# import ros_numpy
rospy.init_node('pointcloud_republisher', anonymous=True)

MIN_Z = 0.02
MAX_X = 0.5
tf_buffer = tf2_ros.Buffer()
tf_listener = tf2_ros.TransformListener(tf_buffer)

pub = rospy.Publisher("/points2", CloudSamples, queue_size=1)
ppub = rospy.Publisher("/points2_cloud", PointCloud2, queue_size=10)


def callback(msg:PointCloud2):

    transform = tf_buffer.lookup_transform("world", "left_camera", rospy.Time(), rospy.Duration(1.0))

    msg = do_transform_cloud(msg, transform)

    seq = msg.header.seq
    msg.header.stamp = rospy.Time.now()
    msg.header.seq = seq
    msg.header.frame_id = "world"

    cloud_sample = CloudSamples()
    points = []

    cloud_sample.cloud_sources.cloud = msg
    for point in pc2.read_points(msg, skip_nans=True):
        if point[2]>MIN_Z and point[0] <= MAX_X:
            p_point = Point()
            p_point.x = point[0]
            p_point.y = point[1]
            p_point.z = point[2]
            cloud_sample.samples.append(p_point)
            points.append([point[0], point[1], point[2]])

    msg = pc2.create_cloud_xyz32(msg.header, points)

    # msg.header.stamp
    # msg.header.seq = seq


    pub.publish(cloud_sample)
    ppub.publish(msg)

def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.



    #rospy.sleep(5)

    rospy.Subscriber("/stereo/points2", PointCloud2, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()