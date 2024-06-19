# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dobot_bringup: 2 messages, 100 services")

set(MSG_I_FLAGS "-Idobot_bringup:/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dobot_bringup_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/RobotStatus.msg" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/RobotStatus.msg" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/ToolVectorActual.msg" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/ToolVectorActual.msg" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EnableRobot.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EnableRobot.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DisableRobot.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DisableRobot.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ClearError.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ClearError.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ResetRobot.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ResetRobot.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedFactor.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedFactor.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/User.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/User.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Tool.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Tool.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RobotMode.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RobotMode.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PayLoad.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PayLoad.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DO.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DO.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOExecute.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOExecute.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDO.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDO.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDOExecute.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDOExecute.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AO.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AO.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AOExecute.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AOExecute.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccJ.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccJ.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccL.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccL.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedJ.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedJ.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedL.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedL.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arc.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arc.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arch.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arch.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/CP.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/CP.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LimZ.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LimZ.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetArmOrientation.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetArmOrientation.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PowerOn.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PowerOn.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RunScript.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RunScript.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopScript.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopScript.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PauseScript.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PauseScript.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ContinueScript.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ContinueScript.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetHoldRegs.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetHoldRegs.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetHoldRegs.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetHoldRegs.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetSafeSkin.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetSafeSkin.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetObstacleAvoid.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetObstacleAvoid.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PositiveSolution.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PositiveSolution.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollisionLevel.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollisionLevel.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EmergencyStop.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EmergencyStop.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/BrakeControl.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/BrakeControl.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Continues.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Continues.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DI.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DI.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDI.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDI.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AI.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AI.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolAI.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolAI.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DigitalOutputs.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DigitalOutputs.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetAngle.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetAngle.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetCoils.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetCoils.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetErrorID.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetErrorID.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopmoveJog.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopmoveJog.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopDrag.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopDrag.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartDrag.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartDrag.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetPayload.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetPayload.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCoils.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCoils.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJTool.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJTool.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLTool.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLTool.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLUser.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLUser.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJUser.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJUser.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/InverseSolution.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/InverseSolution.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPose.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPose.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInRegs.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInRegs.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInBits.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInBits.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DIGroup.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DIGroup.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOGroup.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOGroup.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/pause.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/pause.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Wait.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Wait.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJExt.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJExt.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusCreate.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusCreate.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusClose.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusClose.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LoadSwitch.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LoadSwitch.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelJointMovJ.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelJointMovJ.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTraceStartPose.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTraceStartPose.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPathStartPose.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPathStartPose.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/HandleTrajPoints.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/HandleTrajPoints.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetSixForceData.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetSixForceData.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollideDrag.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollideDrag.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminalKeys.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminalKeys.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminal485.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminal485.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTerminal485.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTerminal485.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeed.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeed.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeedEnd.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeedEnd.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/JointMovJ.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/JointMovJ.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJ.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJ.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovL.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovL.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Jump.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Jump.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJ.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJ.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovL.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovL.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovLIO.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovLIO.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJIO.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJIO.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Circle.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Circle.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoJ.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoJ.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoP.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoP.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Sync.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Sync.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SyncAll.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SyncAll.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartTrace.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartTrace.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartPath.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartPath.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartFCTrace.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartFCTrace.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MoveJog.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MoveJog.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpDashboard.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpDashboard.srv" ""
)

get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpRealData.srv" NAME_WE)
add_custom_target(_dobot_bringup_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot_bringup" "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpRealData.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_msg_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/ToolVectorActual.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)

### Generating Services
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EnableRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DisableRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ClearError.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ResetRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedFactor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/User.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Tool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RobotMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PayLoad.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOExecute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDOExecute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AOExecute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arc.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/CP.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LimZ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetArmOrientation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PowerOn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RunScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PauseScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ContinueScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetHoldRegs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetHoldRegs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetSafeSkin.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetObstacleAvoid.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PositiveSolution.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollisionLevel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EmergencyStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/BrakeControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Continues.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolAI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DigitalOutputs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetAngle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetCoils.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetErrorID.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopmoveJog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopDrag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartDrag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetPayload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCoils.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLUser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJUser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/InverseSolution.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInRegs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInBits.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DIGroup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOGroup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/pause.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Wait.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJExt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusCreate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusClose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LoadSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelJointMovJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTraceStartPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPathStartPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/HandleTrajPoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetSixForceData.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollideDrag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminalKeys.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminal485.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTerminal485.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeedEnd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/JointMovJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Jump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovLIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Circle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoP.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Sync.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SyncAll.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartTrace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartPath.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartFCTrace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MoveJog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpDashboard.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_cpp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpRealData.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
)

### Generating Module File
_generate_module_cpp(dobot_bringup
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dobot_bringup_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dobot_bringup_generate_messages dobot_bringup_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/RobotStatus.msg" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/ToolVectorActual.msg" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EnableRobot.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DisableRobot.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ClearError.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ResetRobot.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedFactor.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/User.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Tool.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RobotMode.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PayLoad.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DO.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOExecute.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDO.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDOExecute.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AO.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AOExecute.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccL.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedL.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arc.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arch.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/CP.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LimZ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetArmOrientation.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PowerOn.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RunScript.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopScript.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PauseScript.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ContinueScript.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetHoldRegs.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetHoldRegs.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetSafeSkin.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetObstacleAvoid.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PositiveSolution.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollisionLevel.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EmergencyStop.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/BrakeControl.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Continues.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DI.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDI.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AI.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolAI.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DigitalOutputs.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetAngle.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetCoils.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetErrorID.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopmoveJog.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopDrag.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartDrag.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetPayload.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCoils.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJTool.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLTool.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLUser.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJUser.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/InverseSolution.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPose.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInRegs.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInBits.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DIGroup.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOGroup.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/pause.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Wait.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJExt.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusCreate.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusClose.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LoadSwitch.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelJointMovJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTraceStartPose.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPathStartPose.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/HandleTrajPoints.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetSixForceData.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollideDrag.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminalKeys.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminal485.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTerminal485.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeed.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeedEnd.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/JointMovJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovL.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Jump.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovL.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovLIO.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJIO.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Circle.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoP.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Sync.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SyncAll.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartTrace.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartPath.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartFCTrace.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MoveJog.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpDashboard.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpRealData.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_cpp _dobot_bringup_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dobot_bringup_gencpp)
add_dependencies(dobot_bringup_gencpp dobot_bringup_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dobot_bringup_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_msg_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/ToolVectorActual.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)

### Generating Services
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EnableRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DisableRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ClearError.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ResetRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedFactor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/User.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Tool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RobotMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PayLoad.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOExecute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDOExecute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AOExecute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arc.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/CP.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LimZ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetArmOrientation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PowerOn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RunScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PauseScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ContinueScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetHoldRegs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetHoldRegs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetSafeSkin.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetObstacleAvoid.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PositiveSolution.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollisionLevel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EmergencyStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/BrakeControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Continues.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolAI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DigitalOutputs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetAngle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetCoils.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetErrorID.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopmoveJog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopDrag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartDrag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetPayload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCoils.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLUser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJUser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/InverseSolution.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInRegs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInBits.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DIGroup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOGroup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/pause.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Wait.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJExt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusCreate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusClose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LoadSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelJointMovJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTraceStartPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPathStartPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/HandleTrajPoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetSixForceData.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollideDrag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminalKeys.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminal485.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTerminal485.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeedEnd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/JointMovJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Jump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovLIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Circle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoP.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Sync.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SyncAll.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartTrace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartPath.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartFCTrace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MoveJog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpDashboard.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)
_generate_srv_eus(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpRealData.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
)

### Generating Module File
_generate_module_eus(dobot_bringup
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dobot_bringup_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dobot_bringup_generate_messages dobot_bringup_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/RobotStatus.msg" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/ToolVectorActual.msg" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EnableRobot.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DisableRobot.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ClearError.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ResetRobot.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedFactor.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/User.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Tool.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RobotMode.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PayLoad.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DO.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOExecute.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDO.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDOExecute.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AO.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AOExecute.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccL.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedL.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arc.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arch.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/CP.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LimZ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetArmOrientation.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PowerOn.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RunScript.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopScript.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PauseScript.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ContinueScript.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetHoldRegs.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetHoldRegs.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetSafeSkin.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetObstacleAvoid.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PositiveSolution.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollisionLevel.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EmergencyStop.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/BrakeControl.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Continues.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DI.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDI.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AI.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolAI.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DigitalOutputs.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetAngle.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetCoils.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetErrorID.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopmoveJog.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopDrag.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartDrag.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetPayload.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCoils.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJTool.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLTool.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLUser.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJUser.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/InverseSolution.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPose.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInRegs.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInBits.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DIGroup.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOGroup.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/pause.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Wait.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJExt.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusCreate.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusClose.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LoadSwitch.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelJointMovJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTraceStartPose.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPathStartPose.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/HandleTrajPoints.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetSixForceData.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollideDrag.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminalKeys.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminal485.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTerminal485.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeed.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeedEnd.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/JointMovJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovL.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Jump.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovL.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovLIO.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJIO.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Circle.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoP.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Sync.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SyncAll.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartTrace.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartPath.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartFCTrace.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MoveJog.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpDashboard.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpRealData.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_eus _dobot_bringup_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dobot_bringup_geneus)
add_dependencies(dobot_bringup_geneus dobot_bringup_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dobot_bringup_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_msg_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/ToolVectorActual.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)

### Generating Services
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EnableRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DisableRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ClearError.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ResetRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedFactor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/User.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Tool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RobotMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PayLoad.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOExecute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDOExecute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AOExecute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arc.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/CP.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LimZ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetArmOrientation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PowerOn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RunScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PauseScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ContinueScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetHoldRegs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetHoldRegs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetSafeSkin.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetObstacleAvoid.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PositiveSolution.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollisionLevel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EmergencyStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/BrakeControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Continues.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolAI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DigitalOutputs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetAngle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetCoils.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetErrorID.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopmoveJog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopDrag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartDrag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetPayload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCoils.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLUser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJUser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/InverseSolution.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInRegs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInBits.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DIGroup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOGroup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/pause.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Wait.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJExt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusCreate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusClose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LoadSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelJointMovJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTraceStartPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPathStartPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/HandleTrajPoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetSixForceData.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollideDrag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminalKeys.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminal485.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTerminal485.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeedEnd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/JointMovJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Jump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovLIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Circle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoP.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Sync.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SyncAll.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartTrace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartPath.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartFCTrace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MoveJog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpDashboard.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)
_generate_srv_lisp(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpRealData.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
)

### Generating Module File
_generate_module_lisp(dobot_bringup
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dobot_bringup_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dobot_bringup_generate_messages dobot_bringup_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/RobotStatus.msg" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/ToolVectorActual.msg" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EnableRobot.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DisableRobot.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ClearError.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ResetRobot.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedFactor.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/User.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Tool.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RobotMode.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PayLoad.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DO.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOExecute.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDO.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDOExecute.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AO.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AOExecute.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccL.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedL.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arc.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arch.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/CP.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LimZ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetArmOrientation.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PowerOn.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RunScript.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopScript.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PauseScript.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ContinueScript.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetHoldRegs.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetHoldRegs.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetSafeSkin.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetObstacleAvoid.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PositiveSolution.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollisionLevel.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EmergencyStop.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/BrakeControl.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Continues.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DI.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDI.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AI.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolAI.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DigitalOutputs.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetAngle.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetCoils.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetErrorID.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopmoveJog.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopDrag.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartDrag.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetPayload.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCoils.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJTool.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLTool.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLUser.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJUser.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/InverseSolution.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPose.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInRegs.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInBits.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DIGroup.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOGroup.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/pause.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Wait.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJExt.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusCreate.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusClose.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LoadSwitch.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelJointMovJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTraceStartPose.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPathStartPose.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/HandleTrajPoints.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetSixForceData.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollideDrag.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminalKeys.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminal485.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTerminal485.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeed.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeedEnd.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/JointMovJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovL.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Jump.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovL.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovLIO.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJIO.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Circle.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoP.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Sync.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SyncAll.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartTrace.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartPath.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartFCTrace.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MoveJog.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpDashboard.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpRealData.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_lisp _dobot_bringup_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dobot_bringup_genlisp)
add_dependencies(dobot_bringup_genlisp dobot_bringup_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dobot_bringup_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_msg_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/ToolVectorActual.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)

### Generating Services
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EnableRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DisableRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ClearError.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ResetRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedFactor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/User.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Tool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RobotMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PayLoad.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOExecute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDOExecute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AOExecute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arc.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/CP.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LimZ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetArmOrientation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PowerOn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RunScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PauseScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ContinueScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetHoldRegs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetHoldRegs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetSafeSkin.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetObstacleAvoid.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PositiveSolution.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollisionLevel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EmergencyStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/BrakeControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Continues.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolAI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DigitalOutputs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetAngle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetCoils.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetErrorID.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopmoveJog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopDrag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartDrag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetPayload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCoils.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLUser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJUser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/InverseSolution.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInRegs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInBits.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DIGroup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOGroup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/pause.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Wait.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJExt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusCreate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusClose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LoadSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelJointMovJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTraceStartPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPathStartPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/HandleTrajPoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetSixForceData.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollideDrag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminalKeys.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminal485.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTerminal485.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeedEnd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/JointMovJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Jump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovLIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Circle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoP.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Sync.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SyncAll.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartTrace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartPath.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartFCTrace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MoveJog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpDashboard.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)
_generate_srv_nodejs(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpRealData.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
)

### Generating Module File
_generate_module_nodejs(dobot_bringup
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dobot_bringup_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dobot_bringup_generate_messages dobot_bringup_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/RobotStatus.msg" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/ToolVectorActual.msg" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EnableRobot.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DisableRobot.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ClearError.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ResetRobot.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedFactor.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/User.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Tool.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RobotMode.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PayLoad.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DO.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOExecute.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDO.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDOExecute.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AO.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AOExecute.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccL.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedL.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arc.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arch.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/CP.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LimZ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetArmOrientation.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PowerOn.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RunScript.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopScript.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PauseScript.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ContinueScript.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetHoldRegs.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetHoldRegs.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetSafeSkin.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetObstacleAvoid.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PositiveSolution.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollisionLevel.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EmergencyStop.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/BrakeControl.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Continues.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DI.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDI.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AI.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolAI.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DigitalOutputs.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetAngle.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetCoils.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetErrorID.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopmoveJog.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopDrag.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartDrag.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetPayload.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCoils.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJTool.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLTool.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLUser.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJUser.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/InverseSolution.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPose.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInRegs.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInBits.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DIGroup.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOGroup.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/pause.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Wait.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJExt.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusCreate.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusClose.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LoadSwitch.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelJointMovJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTraceStartPose.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPathStartPose.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/HandleTrajPoints.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetSixForceData.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollideDrag.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminalKeys.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminal485.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTerminal485.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeed.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeedEnd.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/JointMovJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovL.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Jump.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovL.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovLIO.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJIO.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Circle.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoP.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Sync.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SyncAll.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartTrace.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartPath.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartFCTrace.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MoveJog.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpDashboard.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpRealData.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_nodejs _dobot_bringup_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dobot_bringup_gennodejs)
add_dependencies(dobot_bringup_gennodejs dobot_bringup_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dobot_bringup_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_msg_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/ToolVectorActual.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)

### Generating Services
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EnableRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DisableRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ClearError.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ResetRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedFactor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/User.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Tool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RobotMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PayLoad.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOExecute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDOExecute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AOExecute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arc.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/CP.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LimZ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetArmOrientation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PowerOn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RunScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PauseScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ContinueScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetHoldRegs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetHoldRegs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetSafeSkin.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetObstacleAvoid.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PositiveSolution.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollisionLevel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EmergencyStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/BrakeControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Continues.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolAI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DigitalOutputs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetAngle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetCoils.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetErrorID.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopmoveJog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopDrag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartDrag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetPayload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCoils.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLUser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJUser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/InverseSolution.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInRegs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInBits.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DIGroup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOGroup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/pause.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Wait.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJExt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusCreate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusClose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LoadSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelJointMovJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTraceStartPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPathStartPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/HandleTrajPoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetSixForceData.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollideDrag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminalKeys.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminal485.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTerminal485.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeedEnd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/JointMovJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Jump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovLIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Circle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoP.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Sync.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SyncAll.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartTrace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartPath.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartFCTrace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MoveJog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpDashboard.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)
_generate_srv_py(dobot_bringup
  "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpRealData.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
)

### Generating Module File
_generate_module_py(dobot_bringup
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dobot_bringup_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dobot_bringup_generate_messages dobot_bringup_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/RobotStatus.msg" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/msg/ToolVectorActual.msg" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EnableRobot.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DisableRobot.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ClearError.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ResetRobot.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedFactor.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/User.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Tool.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RobotMode.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PayLoad.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DO.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOExecute.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDO.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDOExecute.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AO.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AOExecute.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AccL.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SpeedL.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arc.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Arch.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/CP.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LimZ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetArmOrientation.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PowerOn.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RunScript.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopScript.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PauseScript.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ContinueScript.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetHoldRegs.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetHoldRegs.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetSafeSkin.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetObstacleAvoid.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/PositiveSolution.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollisionLevel.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/EmergencyStop.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/BrakeControl.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Continues.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DI.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolDI.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/AI.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ToolAI.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DigitalOutputs.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetAngle.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetCoils.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetErrorID.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopmoveJog.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StopDrag.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartDrag.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetPayload.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCoils.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJTool.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLTool.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovLUser.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJUser.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/InverseSolution.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPose.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInRegs.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetInBits.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DIGroup.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/DOGroup.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/pause.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Wait.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJExt.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusCreate.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ModbusClose.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/LoadSwitch.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelJointMovJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTraceStartPose.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetPathStartPose.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/HandleTrajPoints.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetSixForceData.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetCollideDrag.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminalKeys.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SetTerminal485.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/GetTerminal485.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeed.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TCPSpeedEnd.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/JointMovJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovL.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Jump.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/RelMovL.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovLIO.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MovJIO.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Circle.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoJ.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/ServoP.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/Sync.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/SyncAll.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartTrace.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartPath.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/StartFCTrace.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/MoveJog.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpDashboard.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bclacy/Cube-Sorting-Robot/src/dobot_bringup/srv/TcpRealData.srv" NAME_WE)
add_dependencies(dobot_bringup_generate_messages_py _dobot_bringup_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dobot_bringup_genpy)
add_dependencies(dobot_bringup_genpy dobot_bringup_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dobot_bringup_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot_bringup
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dobot_bringup_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot_bringup
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dobot_bringup_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot_bringup
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dobot_bringup_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot_bringup
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dobot_bringup_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot_bringup
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dobot_bringup_generate_messages_py std_msgs_generate_messages_py)
endif()
