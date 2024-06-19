# Install script for directory: /home/bclacy/Cube-Sorting-Robot/src/dobot_bringup

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/bclacy/Cube-Sorting-Robot/install")
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
   "/home/bclacy/Cube-Sorting-Robot/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/bclacy/Cube-Sorting-Robot/install" TYPE PROGRAM FILES "/home/bclacy/Cube-Sorting-Robot/build/dobot_bringup/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/bclacy/Cube-Sorting-Robot/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/bclacy/Cube-Sorting-Robot/install" TYPE PROGRAM FILES "/home/bclacy/Cube-Sorting-Robot/build/dobot_bringup/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/bclacy/Cube-Sorting-Robot/install/setup.bash;/home/bclacy/Cube-Sorting-Robot/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/bclacy/Cube-Sorting-Robot/install" TYPE FILE FILES
    "/home/bclacy/Cube-Sorting-Robot/build/dobot_bringup/catkin_generated/installspace/setup.bash"
    "/home/bclacy/Cube-Sorting-Robot/build/dobot_bringup/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/bclacy/Cube-Sorting-Robot/install/setup.sh;/home/bclacy/Cube-Sorting-Robot/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/bclacy/Cube-Sorting-Robot/install" TYPE FILE FILES
    "/home/bclacy/Cube-Sorting-Robot/build/dobot_bringup/catkin_generated/installspace/setup.sh"
    "/home/bclacy/Cube-Sorting-Robot/build/dobot_bringup/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/bclacy/Cube-Sorting-Robot/install/setup.zsh;/home/bclacy/Cube-Sorting-Robot/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/bclacy/Cube-Sorting-Robot/install" TYPE FILE FILES
    "/home/bclacy/Cube-Sorting-Robot/build/dobot_bringup/catkin_generated/installspace/setup.zsh"
    "/home/bclacy/Cube-Sorting-Robot/build/dobot_bringup/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/bclacy/Cube-Sorting-Robot/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/bclacy/Cube-Sorting-Robot/install" TYPE FILE FILES "/home/bclacy/Cube-Sorting-Robot/build/dobot_bringup/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_bringup/msg" TYPE FILE FILES
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/RobotStatus.msg"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/ToolVectorActual.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_bringup/srv" TYPE FILE FILES
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EnableRobot.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DisableRobot.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ClearError.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ResetRobot.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedFactor.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/User.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Tool.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RobotMode.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PayLoad.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DO.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOExecute.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDO.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDOExecute.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AO.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AOExecute.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccJ.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccL.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedJ.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedL.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arc.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arch.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/CP.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LimZ.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetArmOrientation.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PowerOn.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RunScript.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopScript.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PauseScript.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ContinueScript.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetHoldRegs.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetHoldRegs.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetSafeSkin.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetObstacleAvoid.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PositiveSolution.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollisionLevel.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EmergencyStop.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/BrakeControl.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Continues.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DI.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDI.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AI.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolAI.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DigitalOutputs.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetAngle.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetCoils.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetErrorID.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopmoveJog.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopDrag.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartDrag.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetPayload.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCoils.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetArmOrientation.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJTool.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLTool.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLUser.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJUser.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/InverseSolution.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPose.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInRegs.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInBits.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DIGroup.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOGroup.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/pause.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/User.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Wait.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJExt.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusCreate.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusClose.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LoadSwitch.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelJointMovJ.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTraceStartPose.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPathStartPose.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/HandleTrajPoints.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetSixForceData.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollideDrag.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminalKeys.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminal485.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTerminal485.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeed.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeedEnd.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/JointMovJ.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJ.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovL.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Jump.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJ.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovL.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovLIO.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJIO.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arc.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Circle.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoJ.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoP.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Sync.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SyncAll.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartTrace.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartPath.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartFCTrace.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MoveJog.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpDashboard.srv"
    "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpRealData.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_bringup/cmake" TYPE FILE FILES "/home/bclacy/Cube-Sorting-Robot/build/dobot_bringup/catkin_generated/installspace/dobot_bringup-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/bclacy/Cube-Sorting-Robot/devel/.private/dobot_bringup/include/dobot_bringup")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/bclacy/Cube-Sorting-Robot/devel/.private/dobot_bringup/share/roseus/ros/dobot_bringup")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/bclacy/Cube-Sorting-Robot/devel/.private/dobot_bringup/share/common-lisp/ros/dobot_bringup")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/bclacy/Cube-Sorting-Robot/devel/.private/dobot_bringup/share/gennodejs/ros/dobot_bringup")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/bclacy/Cube-Sorting-Robot/devel/.private/dobot_bringup/lib/python3/dist-packages/dobot_bringup")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/bclacy/Cube-Sorting-Robot/devel/.private/dobot_bringup/lib/python3/dist-packages/dobot_bringup")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/bclacy/Cube-Sorting-Robot/build/dobot_bringup/catkin_generated/installspace/dobot_bringup.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_bringup/cmake" TYPE FILE FILES "/home/bclacy/Cube-Sorting-Robot/build/dobot_bringup/catkin_generated/installspace/dobot_bringup-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_bringup/cmake" TYPE FILE FILES
    "/home/bclacy/Cube-Sorting-Robot/build/dobot_bringup/catkin_generated/installspace/dobot_bringupConfig.cmake"
    "/home/bclacy/Cube-Sorting-Robot/build/dobot_bringup/catkin_generated/installspace/dobot_bringupConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_bringup" TYPE FILE FILES "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/bclacy/Cube-Sorting-Robot/build/dobot_bringup/gtest/cmake_install.cmake")
  include("/home/bclacy/Cube-Sorting-Robot/build/dobot_bringup/json/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/bclacy/Cube-Sorting-Robot/build/dobot_bringup/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
