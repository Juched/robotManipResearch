
"use strict";

let GetTargetPose = require('./GetTargetPose.js')
let UpdateConveyorId = require('./UpdateConveyorId.js')
let GetWorkspaceRobotPoses = require('./GetWorkspaceRobotPoses.js')
let GetWorkspaceRatio = require('./GetWorkspaceRatio.js')
let ObjDetection = require('./ObjDetection.js')
let GetTrajectoryList = require('./GetTrajectoryList.js')
let SetCalibrationCam = require('./SetCalibrationCam.js')
let ManageSequence = require('./ManageSequence.js')
let RobotMove = require('./RobotMove.js')
let SendCustomDxlValue = require('./SendCustomDxlValue.js')
let EditGrip = require('./EditGrip.js')
let SetConveyor = require('./SetConveyor.js')
let GetInt = require('./GetInt.js')
let EditWorkspace = require('./EditWorkspace.js')
let CloseGripper = require('./CloseGripper.js')
let ManageTrajectory = require('./ManageTrajectory.js')
let PullAirVacuumPump = require('./PullAirVacuumPump.js')
let SetInt = require('./SetInt.js')
let SetString = require('./SetString.js')
let ChangeHardwareVersion = require('./ChangeHardwareVersion.js')
let ControlConveyor = require('./ControlConveyor.js')
let GetCalibrationCam = require('./GetCalibrationCam.js')
let GetSequenceList = require('./GetSequenceList.js')
let DebugMarkers = require('./DebugMarkers.js')
let DebugColorDetection = require('./DebugColorDetection.js')
let ManagePosition = require('./ManagePosition.js')
let GetWorkspaceList = require('./GetWorkspaceList.js')
let GetDigitalIO = require('./GetDigitalIO.js')
let OpenGripper = require('./OpenGripper.js')
let PingDxlTool = require('./PingDxlTool.js')
let ManageProcess = require('./ManageProcess.js')
let SetSequenceAutorun = require('./SetSequenceAutorun.js')
let TakePicture = require('./TakePicture.js')
let PushAirVacuumPump = require('./PushAirVacuumPump.js')
let ChangeMotorConfig = require('./ChangeMotorConfig.js')
let SetDigitalIO = require('./SetDigitalIO.js')
let GetPositionList = require('./GetPositionList.js')
let SetLeds = require('./SetLeds.js')

module.exports = {
  GetTargetPose: GetTargetPose,
  UpdateConveyorId: UpdateConveyorId,
  GetWorkspaceRobotPoses: GetWorkspaceRobotPoses,
  GetWorkspaceRatio: GetWorkspaceRatio,
  ObjDetection: ObjDetection,
  GetTrajectoryList: GetTrajectoryList,
  SetCalibrationCam: SetCalibrationCam,
  ManageSequence: ManageSequence,
  RobotMove: RobotMove,
  SendCustomDxlValue: SendCustomDxlValue,
  EditGrip: EditGrip,
  SetConveyor: SetConveyor,
  GetInt: GetInt,
  EditWorkspace: EditWorkspace,
  CloseGripper: CloseGripper,
  ManageTrajectory: ManageTrajectory,
  PullAirVacuumPump: PullAirVacuumPump,
  SetInt: SetInt,
  SetString: SetString,
  ChangeHardwareVersion: ChangeHardwareVersion,
  ControlConveyor: ControlConveyor,
  GetCalibrationCam: GetCalibrationCam,
  GetSequenceList: GetSequenceList,
  DebugMarkers: DebugMarkers,
  DebugColorDetection: DebugColorDetection,
  ManagePosition: ManagePosition,
  GetWorkspaceList: GetWorkspaceList,
  GetDigitalIO: GetDigitalIO,
  OpenGripper: OpenGripper,
  PingDxlTool: PingDxlTool,
  ManageProcess: ManageProcess,
  SetSequenceAutorun: SetSequenceAutorun,
  TakePicture: TakePicture,
  PushAirVacuumPump: PushAirVacuumPump,
  ChangeMotorConfig: ChangeMotorConfig,
  SetDigitalIO: SetDigitalIO,
  GetPositionList: GetPositionList,
  SetLeds: SetLeds,
};
