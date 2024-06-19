# Install script for directory: /home/bclacy/Cube-Sorting-Robot/src/grasping/general-message-pkgs/path_navigation_msgs

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
file(INSTALL DESTINATION "/home/bclacy/Cube-Sorting-Robot/install" TYPE PROGRAM FILES "/home/bclacy/Cube-Sorting-Robot/build/path_navigation_msgs/catkin_generated/installspace/_setup_util.py")
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
file(INSTALL DESTINATION "/home/bclacy/Cube-Sorting-Robot/install" TYPE PROGRAM FILES "/home/bclacy/Cube-Sorting-Robot/build/path_navigation_msgs/catkin_generated/installspace/env.sh")
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
    "/home/bclacy/Cube-Sorting-Robot/build/path_navigation_msgs/catkin_generated/installspace/setup.bash"
    "/home/bclacy/Cube-Sorting-Robot/build/path_navigation_msgs/catkin_generated/installspace/local_setup.bash"
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
    "/home/bclacy/Cube-Sorting-Robot/build/path_navigation_msgs/catkin_generated/installspace/setup.sh"
    "/home/bclacy/Cube-Sorting-Robot/build/path_navigation_msgs/catkin_generated/installspace/local_setup.sh"
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
    "/home/bclacy/Cube-Sorting-Robot/build/path_navigation_msgs/catkin_generated/installspace/setup.zsh"
    "/home/bclacy/Cube-Sorting-Robot/build/path_navigation_msgs/catkin_generated/installspace/local_setup.zsh"
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
file(INSTALL DESTINATION "/home/bclacy/Cube-Sorting-Robot/install" TYPE FILE FILES "/home/bclacy/Cube-Sorting-Robot/build/path_navigation_msgs/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/path_navigation_msgs/action" TYPE FILE FILES
    "/home/bclacy/Cube-Sorting-Robot/src/grasping/general-message-pkgs/path_navigation_msgs/action/PathExecution.action"
    "/home/bclacy/Cube-Sorting-Robot/src/grasping/general-message-pkgs/path_navigation_msgs/action/TransformPathExecution.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/path_navigation_msgs/msg" TYPE FILE FILES
    "/home/bclacy/Cube-Sorting-Robot/devel/.private/path_navigation_msgs/share/path_navigation_msgs/msg/PathExecutionAction.msg"
    "/home/bclacy/Cube-Sorting-Robot/devel/.private/path_navigation_msgs/share/path_navigation_msgs/msg/PathExecutionActionGoal.msg"
    "/home/bclacy/Cube-Sorting-Robot/devel/.private/path_navigation_msgs/share/path_navigation_msgs/msg/PathExecutionActionResult.msg"
    "/home/bclacy/Cube-Sorting-Robot/devel/.private/path_navigation_msgs/share/path_navigation_msgs/msg/PathExecutionActionFeedback.msg"
    "/home/bclacy/Cube-Sorting-Robot/devel/.private/path_navigation_msgs/share/path_navigation_msgs/msg/PathExecutionGoal.msg"
    "/home/bclacy/Cube-Sorting-Robot/devel/.private/path_navigation_msgs/share/path_navigation_msgs/msg/PathExecutionResult.msg"
    "/home/bclacy/Cube-Sorting-Robot/devel/.private/path_navigation_msgs/share/path_navigation_msgs/msg/PathExecutionFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/path_navigation_msgs/msg" TYPE FILE FILES
    "/home/bclacy/Cube-Sorting-Robot/devel/.private/path_navigation_msgs/share/path_navigation_msgs/msg/TransformPathExecutionAction.msg"
    "/home/bclacy/Cube-Sorting-Robot/devel/.private/path_navigation_msgs/share/path_navigation_msgs/msg/TransformPathExecutionActionGoal.msg"
    "/home/bclacy/Cube-Sorting-Robot/devel/.private/path_navigation_msgs/share/path_navigation_msgs/msg/TransformPathExecutionActionResult.msg"
    "/home/bclacy/Cube-Sorting-Robot/devel/.private/path_navigation_msgs/share/path_navigation_msgs/msg/TransformPathExecutionActionFeedback.msg"
    "/home/bclacy/Cube-Sorting-Robot/devel/.private/path_navigation_msgs/share/path_navigation_msgs/msg/TransformPathExecutionGoal.msg"
    "/home/bclacy/Cube-Sorting-Robot/devel/.private/path_navigation_msgs/share/path_navigation_msgs/msg/TransformPathExecutionResult.msg"
    "/home/bclacy/Cube-Sorting-Robot/devel/.private/path_navigation_msgs/share/path_navigation_msgs/msg/TransformPathExecutionFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/path_navigation_msgs/cmake" TYPE FILE FILES "/home/bclacy/Cube-Sorting-Robot/build/path_navigation_msgs/catkin_generated/installspace/path_navigation_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/bclacy/Cube-Sorting-Robot/devel/.private/path_navigation_msgs/include/path_navigation_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/bclacy/Cube-Sorting-Robot/devel/.private/path_navigation_msgs/share/roseus/ros/path_navigation_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/bclacy/Cube-Sorting-Robot/devel/.private/path_navigation_msgs/share/common-lisp/ros/path_navigation_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/bclacy/Cube-Sorting-Robot/devel/.private/path_navigation_msgs/share/gennodejs/ros/path_navigation_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/bclacy/Cube-Sorting-Robot/devel/.private/path_navigation_msgs/lib/python3/dist-packages/path_navigation_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/bclacy/Cube-Sorting-Robot/devel/.private/path_navigation_msgs/lib/python3/dist-packages/path_navigation_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/bclacy/Cube-Sorting-Robot/build/path_navigation_msgs/catkin_generated/installspace/path_navigation_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/path_navigation_msgs/cmake" TYPE FILE FILES "/home/bclacy/Cube-Sorting-Robot/build/path_navigation_msgs/catkin_generated/installspace/path_navigation_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/path_navigation_msgs/cmake" TYPE FILE FILES
    "/home/bclacy/Cube-Sorting-Robot/build/path_navigation_msgs/catkin_generated/installspace/path_navigation_msgsConfig.cmake"
    "/home/bclacy/Cube-Sorting-Robot/build/path_navigation_msgs/catkin_generated/installspace/path_navigation_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/path_navigation_msgs" TYPE FILE FILES "/home/bclacy/Cube-Sorting-Robot/src/grasping/general-message-pkgs/path_navigation_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/bclacy/Cube-Sorting-Robot/build/path_navigation_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/bclacy/Cube-Sorting-Robot/build/path_navigation_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
