# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/DATN2022/Pi4b/uart_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/DATN2022/Pi4b/uart_ws/build

# Include any dependencies generated for this target.
include ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/depend.make

# Include the progress variables for this target.
include ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/progress.make

# Include the compile flags for this target's objects.
include ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/flags.make

ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/src/mpu6050_node.cpp.o: ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/flags.make
ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/src/mpu6050_node.cpp.o: /home/ubuntu/DATN2022/Pi4b/uart_ws/src/ros_mpu6050_node/src/mpu6050_node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/DATN2022/Pi4b/uart_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/src/mpu6050_node.cpp.o"
	cd /home/ubuntu/DATN2022/Pi4b/uart_ws/build/ros_mpu6050_node && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mpu6050_node.dir/src/mpu6050_node.cpp.o -c /home/ubuntu/DATN2022/Pi4b/uart_ws/src/ros_mpu6050_node/src/mpu6050_node.cpp

ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/src/mpu6050_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mpu6050_node.dir/src/mpu6050_node.cpp.i"
	cd /home/ubuntu/DATN2022/Pi4b/uart_ws/build/ros_mpu6050_node && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/DATN2022/Pi4b/uart_ws/src/ros_mpu6050_node/src/mpu6050_node.cpp > CMakeFiles/mpu6050_node.dir/src/mpu6050_node.cpp.i

ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/src/mpu6050_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mpu6050_node.dir/src/mpu6050_node.cpp.s"
	cd /home/ubuntu/DATN2022/Pi4b/uart_ws/build/ros_mpu6050_node && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/DATN2022/Pi4b/uart_ws/src/ros_mpu6050_node/src/mpu6050_node.cpp -o CMakeFiles/mpu6050_node.dir/src/mpu6050_node.cpp.s

ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/src/mpu6050_node.cpp.o.requires:

.PHONY : ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/src/mpu6050_node.cpp.o.requires

ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/src/mpu6050_node.cpp.o.provides: ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/src/mpu6050_node.cpp.o.requires
	$(MAKE) -f ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/build.make ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/src/mpu6050_node.cpp.o.provides.build
.PHONY : ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/src/mpu6050_node.cpp.o.provides

ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/src/mpu6050_node.cpp.o.provides.build: ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/src/mpu6050_node.cpp.o


ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/RaspberryPi_bcm2835/I2Cdev/I2Cdev.cpp.o: ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/flags.make
ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/RaspberryPi_bcm2835/I2Cdev/I2Cdev.cpp.o: /usr/share/arduino/libraries/i2cdevlib/RaspberryPi_bcm2835/I2Cdev/I2Cdev.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/DATN2022/Pi4b/uart_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/RaspberryPi_bcm2835/I2Cdev/I2Cdev.cpp.o"
	cd /home/ubuntu/DATN2022/Pi4b/uart_ws/build/ros_mpu6050_node && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/RaspberryPi_bcm2835/I2Cdev/I2Cdev.cpp.o -c /usr/share/arduino/libraries/i2cdevlib/RaspberryPi_bcm2835/I2Cdev/I2Cdev.cpp

ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/RaspberryPi_bcm2835/I2Cdev/I2Cdev.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/RaspberryPi_bcm2835/I2Cdev/I2Cdev.cpp.i"
	cd /home/ubuntu/DATN2022/Pi4b/uart_ws/build/ros_mpu6050_node && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /usr/share/arduino/libraries/i2cdevlib/RaspberryPi_bcm2835/I2Cdev/I2Cdev.cpp > CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/RaspberryPi_bcm2835/I2Cdev/I2Cdev.cpp.i

ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/RaspberryPi_bcm2835/I2Cdev/I2Cdev.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/RaspberryPi_bcm2835/I2Cdev/I2Cdev.cpp.s"
	cd /home/ubuntu/DATN2022/Pi4b/uart_ws/build/ros_mpu6050_node && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /usr/share/arduino/libraries/i2cdevlib/RaspberryPi_bcm2835/I2Cdev/I2Cdev.cpp -o CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/RaspberryPi_bcm2835/I2Cdev/I2Cdev.cpp.s

ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/RaspberryPi_bcm2835/I2Cdev/I2Cdev.cpp.o.requires:

.PHONY : ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/RaspberryPi_bcm2835/I2Cdev/I2Cdev.cpp.o.requires

ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/RaspberryPi_bcm2835/I2Cdev/I2Cdev.cpp.o.provides: ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/RaspberryPi_bcm2835/I2Cdev/I2Cdev.cpp.o.requires
	$(MAKE) -f ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/build.make ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/RaspberryPi_bcm2835/I2Cdev/I2Cdev.cpp.o.provides.build
.PHONY : ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/RaspberryPi_bcm2835/I2Cdev/I2Cdev.cpp.o.provides

ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/RaspberryPi_bcm2835/I2Cdev/I2Cdev.cpp.o.provides.build: ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/RaspberryPi_bcm2835/I2Cdev/I2Cdev.cpp.o


ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/Arduino/MPU6050/MPU6050.cpp.o: ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/flags.make
ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/Arduino/MPU6050/MPU6050.cpp.o: /usr/share/arduino/libraries/i2cdevlib/Arduino/MPU6050/MPU6050.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/DATN2022/Pi4b/uart_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/Arduino/MPU6050/MPU6050.cpp.o"
	cd /home/ubuntu/DATN2022/Pi4b/uart_ws/build/ros_mpu6050_node && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/Arduino/MPU6050/MPU6050.cpp.o -c /usr/share/arduino/libraries/i2cdevlib/Arduino/MPU6050/MPU6050.cpp

ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/Arduino/MPU6050/MPU6050.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/Arduino/MPU6050/MPU6050.cpp.i"
	cd /home/ubuntu/DATN2022/Pi4b/uart_ws/build/ros_mpu6050_node && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /usr/share/arduino/libraries/i2cdevlib/Arduino/MPU6050/MPU6050.cpp > CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/Arduino/MPU6050/MPU6050.cpp.i

ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/Arduino/MPU6050/MPU6050.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/Arduino/MPU6050/MPU6050.cpp.s"
	cd /home/ubuntu/DATN2022/Pi4b/uart_ws/build/ros_mpu6050_node && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /usr/share/arduino/libraries/i2cdevlib/Arduino/MPU6050/MPU6050.cpp -o CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/Arduino/MPU6050/MPU6050.cpp.s

ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/Arduino/MPU6050/MPU6050.cpp.o.requires:

.PHONY : ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/Arduino/MPU6050/MPU6050.cpp.o.requires

ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/Arduino/MPU6050/MPU6050.cpp.o.provides: ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/Arduino/MPU6050/MPU6050.cpp.o.requires
	$(MAKE) -f ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/build.make ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/Arduino/MPU6050/MPU6050.cpp.o.provides.build
.PHONY : ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/Arduino/MPU6050/MPU6050.cpp.o.provides

ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/Arduino/MPU6050/MPU6050.cpp.o.provides.build: ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/Arduino/MPU6050/MPU6050.cpp.o


# Object files for target mpu6050_node
mpu6050_node_OBJECTS = \
"CMakeFiles/mpu6050_node.dir/src/mpu6050_node.cpp.o" \
"CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/RaspberryPi_bcm2835/I2Cdev/I2Cdev.cpp.o" \
"CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/Arduino/MPU6050/MPU6050.cpp.o"

# External object files for target mpu6050_node
mpu6050_node_EXTERNAL_OBJECTS =

/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/ros_mpu6050_node/mpu6050_node: ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/src/mpu6050_node.cpp.o
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/ros_mpu6050_node/mpu6050_node: ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/RaspberryPi_bcm2835/I2Cdev/I2Cdev.cpp.o
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/ros_mpu6050_node/mpu6050_node: ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/Arduino/MPU6050/MPU6050.cpp.o
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/ros_mpu6050_node/mpu6050_node: ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/build.make
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/ros_mpu6050_node/mpu6050_node: /opt/ros/melodic/lib/libroscpp.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/ros_mpu6050_node/mpu6050_node: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/ros_mpu6050_node/mpu6050_node: /opt/ros/melodic/lib/librosconsole.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/ros_mpu6050_node/mpu6050_node: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/ros_mpu6050_node/mpu6050_node: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/ros_mpu6050_node/mpu6050_node: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/ros_mpu6050_node/mpu6050_node: /usr/lib/aarch64-linux-gnu/libboost_regex.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/ros_mpu6050_node/mpu6050_node: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/ros_mpu6050_node/mpu6050_node: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/ros_mpu6050_node/mpu6050_node: /opt/ros/melodic/lib/librostime.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/ros_mpu6050_node/mpu6050_node: /opt/ros/melodic/lib/libcpp_common.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/ros_mpu6050_node/mpu6050_node: /usr/lib/aarch64-linux-gnu/libboost_system.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/ros_mpu6050_node/mpu6050_node: /usr/lib/aarch64-linux-gnu/libboost_thread.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/ros_mpu6050_node/mpu6050_node: /usr/lib/aarch64-linux-gnu/libboost_chrono.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/ros_mpu6050_node/mpu6050_node: /usr/lib/aarch64-linux-gnu/libboost_date_time.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/ros_mpu6050_node/mpu6050_node: /usr/lib/aarch64-linux-gnu/libboost_atomic.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/ros_mpu6050_node/mpu6050_node: /usr/lib/aarch64-linux-gnu/libpthread.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/ros_mpu6050_node/mpu6050_node: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so.0.4
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/ros_mpu6050_node/mpu6050_node: ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/DATN2022/Pi4b/uart_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable /home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/ros_mpu6050_node/mpu6050_node"
	cd /home/ubuntu/DATN2022/Pi4b/uart_ws/build/ros_mpu6050_node && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mpu6050_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/build: /home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/ros_mpu6050_node/mpu6050_node

.PHONY : ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/build

ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/requires: ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/src/mpu6050_node.cpp.o.requires
ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/requires: ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/RaspberryPi_bcm2835/I2Cdev/I2Cdev.cpp.o.requires
ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/requires: ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/usr/share/arduino/libraries/i2cdevlib/Arduino/MPU6050/MPU6050.cpp.o.requires

.PHONY : ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/requires

ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/clean:
	cd /home/ubuntu/DATN2022/Pi4b/uart_ws/build/ros_mpu6050_node && $(CMAKE_COMMAND) -P CMakeFiles/mpu6050_node.dir/cmake_clean.cmake
.PHONY : ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/clean

ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/depend:
	cd /home/ubuntu/DATN2022/Pi4b/uart_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/DATN2022/Pi4b/uart_ws/src /home/ubuntu/DATN2022/Pi4b/uart_ws/src/ros_mpu6050_node /home/ubuntu/DATN2022/Pi4b/uart_ws/build /home/ubuntu/DATN2022/Pi4b/uart_ws/build/ros_mpu6050_node /home/ubuntu/DATN2022/Pi4b/uart_ws/build/ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ros_mpu6050_node/CMakeFiles/mpu6050_node.dir/depend

