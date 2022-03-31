//Do not edit! This file was generated by Unity-ROS MessageGeneration.
using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;

namespace RosMessageTypes.Riptide
{
    [Serializable]
    public class ScriptOhioResult : Message
    {
        public const string k_RosMessageName = "riptide_msgs/ScriptOhio";
        public override string RosMessageName => k_RosMessageName;

        // result definition

        public ScriptOhioResult()
        {
        }
        public static ScriptOhioResult Deserialize(MessageDeserializer deserializer) => new ScriptOhioResult(deserializer);

        private ScriptOhioResult(MessageDeserializer deserializer)
        {
        }

        public override void SerializeTo(MessageSerializer serializer)
        {
        }

        public override string ToString()
        {
            return "ScriptOhioResult: ";
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
