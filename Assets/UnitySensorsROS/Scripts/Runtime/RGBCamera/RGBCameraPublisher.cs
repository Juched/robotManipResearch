using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using Unity.Robotics.ROSTCPConnector;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;
using RosMessageTypes.Sensor;

[RequireComponent(typeof(Camera))]
[RequireComponent(typeof(FRJ.Sensor.RGBCamera))]
public class RGBCameraPublisher : MonoBehaviour
{

  [SerializeField] private string _topicName = "image";
  [SerializeField] private string _frameId   = "camera";
  [SerializeField] private float _baseline = 0.0f;

  private string _camInfoTopic;
  private float _timeElapsed = 0f;
  private float _timeStamp   = 0f;

  private ROSConnection _ros;
  private CompressedImageMsg _message;    
  private CameraInfoMsg _camInfomessage;

  private FRJ.Sensor.RGBCamera _camera;
  
    
  void Start()
  {
    // Get Rotate Lidar
    this._camera = GetComponent<FRJ.Sensor.RGBCamera>();
    this._camera.Init();

    // setup ROS
    this._ros = ROSConnection.instance;
    this._camInfoTopic = _topicName + "/camera_info";
    this._topicName += "/compressed";
    this._ros.RegisterPublisher<CompressedImageMsg>(this._topicName);
    this._ros.RegisterPublisher<CameraInfoMsg>(this._camInfoTopic);

    this._camInfomessage = new CameraInfoMsg();
    // setup ROS Message
    this._message = new CompressedImageMsg();
    this._message.header.frame_id = this._frameId;
    this._message.format = "jpeg";

    this._camInfomessage = CameraInfoGenerator.ConstructCameraInfoMessage(GetComponent<Camera>(), this._message.header, this._baseline);
            
  }

    void Update()
    {
        this._timeElapsed += Time.deltaTime;

        if(this._timeElapsed > (1f/this._camera.scanRate))
        {
            // Update ROS Message
            uint sec = (uint)Math.Truncate(this._timeStamp);
            uint nanosec = (uint)( (this._timeStamp - sec)*1e+9 );
            this._message.header.stamp.sec = sec;
            this._message.header.stamp.nanosec = nanosec;
            this._message.data = this._camera.data;
            this._ros.Send(this._topicName, this._message);

            
            this._ros.Send(this._camInfoTopic, this._camInfomessage);
            // Update time
            this._timeElapsed = 0;
            this._timeStamp = Time.time;
        }
    }
}
