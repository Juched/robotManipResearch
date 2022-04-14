# Install script for directory: /home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/andrew/robotManipResearch/workspace/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/andrew/robotManipResearch/workspace/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/andrew/robotManipResearch/workspace/install" TYPE PROGRAM FILES "/home/andrew/robotManipResearch/workspace/build/niryo_one_msgs/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/andrew/robotManipResearch/workspace/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/andrew/robotManipResearch/workspace/install" TYPE PROGRAM FILES "/home/andrew/robotManipResearch/workspace/build/niryo_one_msgs/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/andrew/robotManipResearch/workspace/install/setup.bash;/home/andrew/robotManipResearch/workspace/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/andrew/robotManipResearch/workspace/install" TYPE FILE FILES
    "/home/andrew/robotManipResearch/workspace/build/niryo_one_msgs/catkin_generated/installspace/setup.bash"
    "/home/andrew/robotManipResearch/workspace/build/niryo_one_msgs/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/andrew/robotManipResearch/workspace/install/setup.sh;/home/andrew/robotManipResearch/workspace/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/andrew/robotManipResearch/workspace/install" TYPE FILE FILES
    "/home/andrew/robotManipResearch/workspace/build/niryo_one_msgs/catkin_generated/installspace/setup.sh"
    "/home/andrew/robotManipResearch/workspace/build/niryo_one_msgs/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/andrew/robotManipResearch/workspace/install/setup.zsh;/home/andrew/robotManipResearch/workspace/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/andrew/robotManipResearch/workspace/install" TYPE FILE FILES
    "/home/andrew/robotManipResearch/workspace/build/niryo_one_msgs/catkin_generated/installspace/setup.zsh"
    "/home/andrew/robotManipResearch/workspace/build/niryo_one_msgs/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/andrew/robotManipResearch/workspace/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/andrew/robotManipResearch/workspace/install" TYPE FILE FILES "/home/andrew/robotManipResearch/workspace/build/niryo_one_msgs/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/msg" TYPE FILE FILES
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/msg/RPY.msg"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/msg/ProcessState.msg"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/msg/HardwareStatus.msg"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/msg/LogStatus.msg"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/msg/DigitalIOState.msg"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/msg/SoftwareVersion.msg"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/msg/SequenceAutorunStatus.msg"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/msg/MatlabMoveResult.msg"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/msg/Position.msg"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/msg/Trajectory.msg"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/msg/ObjectPose.msg"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/msg/ConveyorFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/srv" TYPE FILE FILES
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/SetInt.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/RobotMove.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/ManageProcess.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/SetLeds.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/GetInt.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/PingDxlTool.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/OpenGripper.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/CloseGripper.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/PullAirVacuumPump.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/PushAirVacuumPump.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/SetDigitalIO.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/GetDigitalIO.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/GetSequenceList.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/ManageSequence.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/SetSequenceAutorun.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/ManagePosition.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/GetPositionList.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/ManageTrajectory.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/GetTrajectoryList.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/ChangeHardwareVersion.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/SendCustomDxlValue.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/ChangeMotorConfig.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/SetString.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/SetCalibrationCam.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/GetCalibrationCam.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/ObjDetection.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/EditGrip.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/EditWorkspace.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/GetTargetPose.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRatio.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceList.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/TakePicture.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/SetConveyor.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/ControlConveyor.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/UpdateConveyorId.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRobotPoses.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/DebugMarkers.srv"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/srv/DebugColorDetection.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/action" TYPE FILE FILES
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/action/JoystickJoints.action"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/action/RobotMove.action"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/action/Tool.action"
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/action/Sequence.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/msg" TYPE FILE FILES
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/JoystickJointsAction.msg"
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/JoystickJointsActionGoal.msg"
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/JoystickJointsActionResult.msg"
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/JoystickJointsActionFeedback.msg"
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/JoystickJointsGoal.msg"
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/JoystickJointsResult.msg"
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/msg" TYPE FILE FILES
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/RobotMoveAction.msg"
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/RobotMoveActionGoal.msg"
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/RobotMoveActionResult.msg"
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/RobotMoveActionFeedback.msg"
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/RobotMoveGoal.msg"
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/RobotMoveResult.msg"
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/RobotMoveFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/msg" TYPE FILE FILES
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/ToolAction.msg"
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/ToolActionGoal.msg"
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/ToolActionResult.msg"
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/ToolActionFeedback.msg"
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/ToolGoal.msg"
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/ToolResult.msg"
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/ToolFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/msg" TYPE FILE FILES
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/SequenceAction.msg"
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/SequenceActionGoal.msg"
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/SequenceActionResult.msg"
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/SequenceActionFeedback.msg"
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/SequenceGoal.msg"
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/SequenceResult.msg"
    "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/niryo_one_msgs/msg/SequenceFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/cmake" TYPE FILE FILES "/home/andrew/robotManipResearch/workspace/build/niryo_one_msgs/catkin_generated/installspace/niryo_one_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/include/niryo_one_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/roseus/ros/niryo_one_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/common-lisp/ros/niryo_one_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/share/gennodejs/ros/niryo_one_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/lib/python3/dist-packages/niryo_one_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/andrew/robotManipResearch/workspace/devel/.private/niryo_one_msgs/lib/python3/dist-packages/niryo_one_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/andrew/robotManipResearch/workspace/build/niryo_one_msgs/catkin_generated/installspace/niryo_one_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/cmake" TYPE FILE FILES "/home/andrew/robotManipResearch/workspace/build/niryo_one_msgs/catkin_generated/installspace/niryo_one_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/cmake" TYPE FILE FILES
    "/home/andrew/robotManipResearch/workspace/build/niryo_one_msgs/catkin_generated/installspace/niryo_one_msgsConfig.cmake"
    "/home/andrew/robotManipResearch/workspace/build/niryo_one_msgs/catkin_generated/installspace/niryo_one_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs" TYPE FILE FILES "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/andrew/robotManipResearch/workspace/build/niryo_one_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/andrew/robotManipResearch/workspace/build/niryo_one_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")