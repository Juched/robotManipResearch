using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using Unity.Robotics.ROSTCPConnector;
using RosMessageTypes.Rosgraph;

public class ClockPublisher : MonoBehaviour
{

  [SerializeField] private string _topicName = "clock";

  private readonly static DateTime UNIX_EPOCH = new DateTime(1970, 1, 1, 0, 0, 0, 0, DateTimeKind.Utc);

  private float _timeStamp   = 0f;

  private ROSConnection _ros;
  private ClockMsg _message;    
    
  void Start()
  {
    // setup ROS
    this._ros = ROSConnection.instance;
    this._ros.RegisterPublisher<ClockMsg>(this._topicName);

    // setup ROS Message
    this._message = new ClockMsg();
    this._message.clock.sec = 0;
    this._message.clock.nanosec = 0;
  }

    void Update()
    {
        TimeSpan timeSpan = DateTime.Now.ToUniversalTime() - UNIX_EPOCH;
        double msecs = timeSpan.TotalMilliseconds;
        uint secs = (uint)(msecs / 1000);
        uint nsecs = (uint)((msecs / 1000 - secs) * 1e+9);
        this._message.clock.sec = secs;
        this._message.clock.nanosec = nsecs;
        this._ros.Send(this._topicName, this._message);
    }

}
