# CMake generated Testfile for 
# Source directory: /home/pedro/ros/workspaces/atom/src/husky/husky_control
# Build directory: /home/pedro/ros/workspaces/atom/build/husky_control
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_husky_control_roslaunch-check_launch "/home/pedro/ros/workspaces/atom/build/husky_control/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/pedro/ros/workspaces/atom/build/husky_control/test_results/husky_control/roslaunch-check_launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/pedro/ros/workspaces/atom/build/husky_control/test_results/husky_control" "/opt/ros/noetic/share/roslaunch/cmake/../scripts/roslaunch-check -o \"/home/pedro/ros/workspaces/atom/build/husky_control/test_results/husky_control/roslaunch-check_launch.xml\" \"/home/pedro/ros/workspaces/atom/src/husky/husky_control/launch\" ")
set_tests_properties(_ctest_husky_control_roslaunch-check_launch PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/roslaunch/cmake/roslaunch-extras.cmake;66;catkin_run_tests_target;/home/pedro/ros/workspaces/atom/src/husky/husky_control/CMakeLists.txt;10;roslaunch_add_file_check;/home/pedro/ros/workspaces/atom/src/husky/husky_control/CMakeLists.txt;0;")
subdirs("gtest")
