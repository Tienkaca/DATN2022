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
include uart/CMakeFiles/listen_and_uart.dir/depend.make

# Include the progress variables for this target.
include uart/CMakeFiles/listen_and_uart.dir/progress.make

# Include the compile flags for this target's objects.
include uart/CMakeFiles/listen_and_uart.dir/flags.make

uart/CMakeFiles/listen_and_uart.dir/src/listen_and_uart.cpp.o: uart/CMakeFiles/listen_and_uart.dir/flags.make
uart/CMakeFiles/listen_and_uart.dir/src/listen_and_uart.cpp.o: /home/ubuntu/DATN2022/Pi4b/uart_ws/src/uart/src/listen_and_uart.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/DATN2022/Pi4b/uart_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object uart/CMakeFiles/listen_and_uart.dir/src/listen_and_uart.cpp.o"
	cd /home/ubuntu/DATN2022/Pi4b/uart_ws/build/uart && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/listen_and_uart.dir/src/listen_and_uart.cpp.o -c /home/ubuntu/DATN2022/Pi4b/uart_ws/src/uart/src/listen_and_uart.cpp

uart/CMakeFiles/listen_and_uart.dir/src/listen_and_uart.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/listen_and_uart.dir/src/listen_and_uart.cpp.i"
	cd /home/ubuntu/DATN2022/Pi4b/uart_ws/build/uart && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/DATN2022/Pi4b/uart_ws/src/uart/src/listen_and_uart.cpp > CMakeFiles/listen_and_uart.dir/src/listen_and_uart.cpp.i

uart/CMakeFiles/listen_and_uart.dir/src/listen_and_uart.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/listen_and_uart.dir/src/listen_and_uart.cpp.s"
	cd /home/ubuntu/DATN2022/Pi4b/uart_ws/build/uart && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/DATN2022/Pi4b/uart_ws/src/uart/src/listen_and_uart.cpp -o CMakeFiles/listen_and_uart.dir/src/listen_and_uart.cpp.s

uart/CMakeFiles/listen_and_uart.dir/src/listen_and_uart.cpp.o.requires:

.PHONY : uart/CMakeFiles/listen_and_uart.dir/src/listen_and_uart.cpp.o.requires

uart/CMakeFiles/listen_and_uart.dir/src/listen_and_uart.cpp.o.provides: uart/CMakeFiles/listen_and_uart.dir/src/listen_and_uart.cpp.o.requires
	$(MAKE) -f uart/CMakeFiles/listen_and_uart.dir/build.make uart/CMakeFiles/listen_and_uart.dir/src/listen_and_uart.cpp.o.provides.build
.PHONY : uart/CMakeFiles/listen_and_uart.dir/src/listen_and_uart.cpp.o.provides

uart/CMakeFiles/listen_and_uart.dir/src/listen_and_uart.cpp.o.provides.build: uart/CMakeFiles/listen_and_uart.dir/src/listen_and_uart.cpp.o


# Object files for target listen_and_uart
listen_and_uart_OBJECTS = \
"CMakeFiles/listen_and_uart.dir/src/listen_and_uart.cpp.o"

# External object files for target listen_and_uart
listen_and_uart_EXTERNAL_OBJECTS =

/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/uart/listen_and_uart: uart/CMakeFiles/listen_and_uart.dir/src/listen_and_uart.cpp.o
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/uart/listen_and_uart: uart/CMakeFiles/listen_and_uart.dir/build.make
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/uart/listen_and_uart: /opt/ros/melodic/lib/libroscpp.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/uart/listen_and_uart: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/uart/listen_and_uart: /opt/ros/melodic/lib/librosconsole.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/uart/listen_and_uart: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/uart/listen_and_uart: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/uart/listen_and_uart: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/uart/listen_and_uart: /usr/lib/aarch64-linux-gnu/libboost_regex.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/uart/listen_and_uart: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/uart/listen_and_uart: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/uart/listen_and_uart: /opt/ros/melodic/lib/librostime.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/uart/listen_and_uart: /opt/ros/melodic/lib/libcpp_common.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/uart/listen_and_uart: /usr/lib/aarch64-linux-gnu/libboost_system.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/uart/listen_and_uart: /usr/lib/aarch64-linux-gnu/libboost_thread.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/uart/listen_and_uart: /usr/lib/aarch64-linux-gnu/libboost_chrono.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/uart/listen_and_uart: /usr/lib/aarch64-linux-gnu/libboost_date_time.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/uart/listen_and_uart: /usr/lib/aarch64-linux-gnu/libboost_atomic.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/uart/listen_and_uart: /usr/lib/aarch64-linux-gnu/libpthread.so
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/uart/listen_and_uart: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so.0.4
/home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/uart/listen_and_uart: uart/CMakeFiles/listen_and_uart.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/DATN2022/Pi4b/uart_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/uart/listen_and_uart"
	cd /home/ubuntu/DATN2022/Pi4b/uart_ws/build/uart && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/listen_and_uart.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
uart/CMakeFiles/listen_and_uart.dir/build: /home/ubuntu/DATN2022/Pi4b/uart_ws/devel/lib/uart/listen_and_uart

.PHONY : uart/CMakeFiles/listen_and_uart.dir/build

uart/CMakeFiles/listen_and_uart.dir/requires: uart/CMakeFiles/listen_and_uart.dir/src/listen_and_uart.cpp.o.requires

.PHONY : uart/CMakeFiles/listen_and_uart.dir/requires

uart/CMakeFiles/listen_and_uart.dir/clean:
	cd /home/ubuntu/DATN2022/Pi4b/uart_ws/build/uart && $(CMAKE_COMMAND) -P CMakeFiles/listen_and_uart.dir/cmake_clean.cmake
.PHONY : uart/CMakeFiles/listen_and_uart.dir/clean

uart/CMakeFiles/listen_and_uart.dir/depend:
	cd /home/ubuntu/DATN2022/Pi4b/uart_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/DATN2022/Pi4b/uart_ws/src /home/ubuntu/DATN2022/Pi4b/uart_ws/src/uart /home/ubuntu/DATN2022/Pi4b/uart_ws/build /home/ubuntu/DATN2022/Pi4b/uart_ws/build/uart /home/ubuntu/DATN2022/Pi4b/uart_ws/build/uart/CMakeFiles/listen_and_uart.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : uart/CMakeFiles/listen_and_uart.dir/depend

