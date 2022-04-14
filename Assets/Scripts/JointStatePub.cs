// using System;
// using RosMessageTypes.Geometry;
// using RosMessageTypes.NiryoMoveit;
// using Unity.Robotics.ROSTCPConnector;
// using Unity.Robotics.ROSTCPConnector.ROSGeometry;
// using RosMessageTypes.Std;
// using Unity.Robotics.UrdfImporter;
// using UnityEngine;
// using RosMessageTypes.Sensor;

// public class JointStatePub : MonoBehaviour
// {

//     private float _timeElapsed = 0f;
//     private float _timeStamp = 0f;
//     const int k_NumRobotJoints = 6;

//     public static readonly string[] LinkNames = { "world/base_link/shoulder_link", "/arm_link", "/elbow_link", "/forearm_link", "/wrist_link", "/hand_link" };

//     [SerializeField]
//     string m_TopicName = "/joint_states";

//     [SerializeField]
//     GameObject m_NiryoOne;

//     private readonly static DateTime UNIX_EPOCH = new DateTime(1970, 1, 1, 0, 0, 0, 0, DateTimeKind.Utc);


//     // Robot Joints
//     UrdfJointRevolute[] m_JointArticulationBodies;

//     // ROS Connector
//     ROSConnection m_Ros;

//     // Start is called before the first frame update
//     void Start()
//     {
//         // Get ROS connection static instance
//         m_Ros = ROSConnection.GetOrCreateInstance();
//         m_Ros.RegisterPublisher<JointStateMsg>(m_TopicName);

//         m_JointArticulationBodies = new UrdfJointRevolute[k_NumRobotJoints];

//         var linkName = string.Empty;
//         for (var i = 0; i < k_NumRobotJoints; i++)
//         {
//             linkName += LinkNames[i];
//             m_JointArticulationBodies[i] = m_NiryoOne.transform.Find(linkName).GetComponent<UrdfJointRevolute>();
//         }

//     }

//     /// <summary>
//     /// Set the proper timestamp for ROS
//     /// </summary>
//     private static RosMessageTypes.Std.Time now()
//     {
//         TimeSpan timeSpan = DateTime.Now.ToUniversalTime() - UNIX_EPOCH;
//         double msecs = timeSpan.TotalMilliseconds;
//         uint secs = (uint)(msecs / 1000);
//         uint nsecs = (uint)((msecs / 1000 - secs) * 1e+9);
//         return new RosMessageTypes.Std.Time(secs, nsecs);
//     }

//     // Update is called once per frame
//     void Update()
//     {
//         var jointStateMsg = new JointStateMsg();
//         jointStateMsg.name = LinkNames;
//         jointStateMsg.position = new double[k_NumRobotJoints];

//         // Update ROS Message
//         uint sec = (uint)Math.Truncate(this._timeStamp);
//         uint nanosec = (uint)((this._timeStamp - sec) * 1e+9);
//         jointStateMsg.header.stamp.sec = sec;
//         jointStateMsg.header.stamp.nanosec = nanosec;

//         for (var i = 0; i < k_NumRobotJoints; i++)
//         {
//             jointStateMsg.position[i] = m_JointArticulationBodies[i].GetPosition();

//         }

//         m_Ros.Publish(m_TopicName, jointStateMsg);

//         this._timeStamp = Time.time;


//     }
// }

using Unity.Robotics.ROSTCPConnector;
using Unity.Robotics.ROSTCPConnector.ROSGeometry;
using Unity.Robotics.UrdfImporter;
using UnityEngine;
using RosMessageTypes.Geometry;
using RosMessageTypes;
using System.Linq;
using System.Collections;
using System.Collections.Generic;
using System;

/// <summary>
/// MoveIt controller for Unity and ROS. It handles the communication back and forth to ROS
/// for simulating a robotic arm. It sends the joint configuration of the arm at a fixed rate
/// emulating a real robot.
///
/// Furthermore it is able to accept moveit_msgs.RobotTrajectory messages and execute them
/// using the ArticulationBody object of Unity.
///
/// Author: Simone Zandara <simone.zandara@gmail.com>
/// </summary>
public class JointStatePub : MonoBehaviour
{
    // Variables required for ROS communication
    public string jointStateTopicName = "joint_states";
    public string moveItMoveGroup = "";

    // Manipulator arm root
    public GameObject jointGroup;

    // ROS Connector
    private ROSConnection ros;

    // Linux time calculation
    private readonly static DateTime UNIX_EPOCH = new DateTime(1970, 1, 1, 0, 0, 0, 0, DateTimeKind.Utc);

    // ROS Topic to talk to Unity
    private readonly string moveItMoveGroupRoot = "/move_group/unity_trajectory/";

    // Maps the joint names with their position in the list of joints
    private Hashtable jointPositionIndex = new Hashtable();

    // Time waiting for xDrive to actuate the trajectory
    private readonly float jointAssignmentWait = 0.2f;

    // Publish rate of the joint
    private readonly float jointPublishRate = 0.1f; // 10Hz

    // Articulation Bodies ordered by their tree, this is the order used by /joint_states
    private List<ArticulationBody> jointArticulationBodies = new List<ArticulationBody>();

    /// <summary>
    /// Initialize the component by fetching all expected joints and starting to publish to ROS
    /// </summary>
    void Start()
    {
        // Get ROS connection static instance
        ros = ROSConnection.instance;

        // Get the root of the joint tree
        ArticulationBody root = jointGroup.GetComponent<ArticulationBody>();

        // Iteratively find all articulate bodies until we find the end effector
        int c = 0;
        while (root)
        {
            print(root);
            var revJoint = root.GetComponent<UrdfJointRevolute>();
            if (revJoint == null)
            {
                break;
            }
            jointArticulationBodies.Add(root);
            var name = root.GetComponent<UrdfJointRevolute>().jointName;
            jointPositionIndex.Add(name, c);

            var next_joints = root.transform.GetComponentsInChildren<ArticulationBody>().
              Where(t => t.gameObject != root.gameObject);


            // No more joints
            if (next_joints.Count() == 0)
            {
                break;
            }

            root = next_joints.First();
            c += 1;
        }


        ros.RegisterPublisher<RosMessageTypes.Sensor.JointStateMsg>(jointStateTopicName);
        // Continuously publish the joint configuration of the robot
        InvokeRepeating("PublishJointStates", 1.0f, jointPublishRate);

        // Subscribe to the moveit trajectory topic
        ros.Subscribe<RosMessageTypes.Trajectory.JointTrajectoryMsg>
            (moveItMoveGroupRoot + moveItMoveGroup, TrajectoryHandler);
    }

    /// <summary>
    /// Set the proper timestamp for ROS
    /// </summary>
    private static RosMessageTypes.Std.HeaderMsg now()
    {
        TimeSpan timeSpan = DateTime.Now.ToUniversalTime() - UNIX_EPOCH;
        double msecs = timeSpan.TotalMilliseconds;
        uint secs = (uint)(msecs / 1000);
        uint nsecs = (uint)((msecs / 1000 - secs) * 1e+9);
        RosMessageTypes.Std.HeaderMsg header = new RosMessageTypes.Std.HeaderMsg();
        RosMessageTypes.BuiltinInterfaces.TimeMsg time = new RosMessageTypes.BuiltinInterfaces.TimeMsg();
        time.sec = secs;
        time.nanosec = nsecs;
        header.stamp = time;
        return header;
    }

    /// <summary>
    /// Publish the joint states from the current robot pose and
    /// send to ROS so that it can be used for motion planning
    /// </summary>
    public void PublishJointStates()
    {
        int numRobotJoints = jointArticulationBodies.Count;
        double[] jointPositions = new double[numRobotJoints];
        double[] jointVelocities = new double[numRobotJoints];
        double[] jointEfforts = new double[numRobotJoints];
        string[] jointNames = new string[numRobotJoints];

        jointPositionIndex.Keys.CopyTo(jointNames, 0);

        int c = 0;
        foreach (ArticulationBody body in jointArticulationBodies)
        {
            jointNames[c] = body.GetComponent<UrdfJointRevolute>().jointName;
            jointPositions[c] = body.jointPosition[0];
            jointVelocities[c] = body.jointVelocity[0];
            jointEfforts[c] = body.jointFriction;
            c += 1;
        }

        RosMessageTypes.Std.HeaderMsg header = now();
        // Pick Pose
        RosMessageTypes.Sensor.JointStateMsg jointState = new RosMessageTypes.Sensor.JointStateMsg
        {
            header = header,
            name = jointNames,
            position = jointPositions,
            velocity = jointVelocities,
            effort = jointEfforts
        };



        // Finally send the message to server_endpoint.py running in ROS
        ros.Send(jointStateTopicName, jointState);
    }

    /// <summary>
    /// Start a separate routine which executes the trajectory
    /// </summary>
    public void TrajectoryHandler(RosMessageTypes.Trajectory.JointTrajectoryMsg response)
    {
        StartCoroutine(ExecuteTrajectories(response));
    }

    /// <summary>
    /// Execute the trajectory coming from MoveIt
    /// </summary>
    private IEnumerator ExecuteTrajectories(RosMessageTypes.Trajectory.JointTrajectoryMsg joint_trajectory)
    {
        // The joint order of MoveIt is not regular so we must read the names to map
        // the right joint index.
        string[] jointNamesFromROS = joint_trajectory.joint_names;

        // For each trajectory returned by MoveIt set the xDrive and wait for completion
        for (int jointConfigIndex = 0; jointConfigIndex < joint_trajectory.points.Length; jointConfigIndex++)
        {
            // Get the joint position in radians and transform to degrees
            var jointPositions = joint_trajectory.points[jointConfigIndex].positions;
            float[] result = jointPositions.Select(r => (float)r * Mathf.Rad2Deg).ToArray();

            // No points
            if (result.Length == 0)
            {
                Debug.Log("Joint trajectory returned 0 positions! Skipping");
                continue;
            }

            // Set the joint positions into the xDrive of the ArticulationBody
            for (int joint = 0; joint < result.Length - 1; joint++)
            {
                var jointName = jointNamesFromROS[joint];
                var jointIndex = (int)jointPositionIndex[jointName];
                var joint1XDrive = jointArticulationBodies[jointIndex].xDrive;
                joint1XDrive.target = result[joint];
                jointArticulationBodies[jointIndex].xDrive = joint1XDrive;
            }

            // Wait until the execution is complete
            yield return new WaitForSeconds(jointAssignmentWait);
        }
    }
}
