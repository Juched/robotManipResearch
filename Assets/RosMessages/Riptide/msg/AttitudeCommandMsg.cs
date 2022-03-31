//Do not edit! This file was generated by Unity-ROS MessageGeneration.
using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;

namespace RosMessageTypes.Riptide
{
    [Serializable]
    public class AttitudeCommandMsg : Message
    {
        public const string k_RosMessageName = "riptide_msgs2/AttitudeCommand";
        public override string RosMessageName => k_RosMessageName;

        public float value;
        public sbyte mode;
        public const sbyte POSITION = 0;
        public const sbyte VELOCITY = 1;
        public const sbyte MOMENT = 2;

        public AttitudeCommandMsg()
        {
            this.value = 0.0f;
            this.mode = 0;
        }

        public AttitudeCommandMsg(float value, sbyte mode)
        {
            this.value = value;
            this.mode = mode;
        }

        public static AttitudeCommandMsg Deserialize(MessageDeserializer deserializer) => new AttitudeCommandMsg(deserializer);

        private AttitudeCommandMsg(MessageDeserializer deserializer)
        {
            deserializer.Read(out this.value);
            deserializer.Read(out this.mode);
        }

        public override void SerializeTo(MessageSerializer serializer)
        {
            serializer.Write(this.value);
            serializer.Write(this.mode);
        }

        public override string ToString()
        {
            return "AttitudeCommandMsg: " +
            "\nvalue: " + value.ToString() +
            "\nmode: " + mode.ToString();
        }

#if UNITY_EDITOR
        [UnityEditor.InitializeOnLoadMethod]
#else
        [UnityEngine.RuntimeInitializeOnLoadMethod]
#endif
        public static void Register()
        {
            MessageRegistry.Register(k_RosMessageName, Deserialize);
        }
    }
}
