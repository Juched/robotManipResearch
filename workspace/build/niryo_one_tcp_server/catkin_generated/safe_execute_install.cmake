execute_process(COMMAND "/home/andrew/robotManipResearch/workspace/build/niryo_one_tcp_server/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/andrew/robotManipResearch/workspace/build/niryo_one_tcp_server/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
