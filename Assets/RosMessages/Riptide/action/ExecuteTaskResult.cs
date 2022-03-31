//Do not edit! This file was generated by Unity-ROS MessageGeneration.
using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;

namespace RosMessageTypes.Riptide
{
    [Serializable]
    public class ExecuteTaskResult : Message
    {
        public const string k_RosMessageName = "riptide_msgs/ExecuteTask";
        public override string RosMessageName => k_RosMessageName;

        // result definition
        public sbyte returncode;

        public ExecuteTaskResult()
        {
            this.returncode = 0;
        }

        public ExecuteTaskResult(sbyte returncode)
        {
            this.returncode = returncode;
        }

        public static ExecuteTaskResult Deserialize(MessageDeserializer deserializer) => new ExecuteTaskResult(deserializer);

        private ExecuteTaskResult(MessageDeserializer deserializer)
        {
            deserializer.Read(out this.returncode);
        }

        public override void SerializeTo(MessageSerializer serializer)
        {
            serializer.Write(this.returncode);
        }

        public override string ToString()
        {
            return "ExecuteTaskResult: " +
            "\nreturncode: " + returncode.ToString();
        }

#if UNITY_EDITOR
        [UnityEditor.InitializeOnLoadMethod]
#else
        [UnityEngine.RuntimeInitializeOnLoadMethod]
#endif
        public static void Register()
        {
            MessageRegistry.Register(k_RosMessageName, Deserialize, MessageSubtopic.Result);
        }
    }
}
