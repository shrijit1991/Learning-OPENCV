# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/cmake-gui

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/shrijit/GitHub/Learning-OPENCV/shrijit/Examples/ColorSpaceConv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/shrijit/GitHub/Learning-OPENCV/shrijit/Examples/ColorSpaceConv/build

# Include any dependencies generated for this target.
include CMakeFiles/ColorSpaceConv.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ColorSpaceConv.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ColorSpaceConv.dir/flags.make

CMakeFiles/ColorSpaceConv.dir/CSConv.o: CMakeFiles/ColorSpaceConv.dir/flags.make
CMakeFiles/ColorSpaceConv.dir/CSConv.o: ../CSConv.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/shrijit/GitHub/Learning-OPENCV/shrijit/Examples/ColorSpaceConv/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/ColorSpaceConv.dir/CSConv.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ColorSpaceConv.dir/CSConv.o -c /home/shrijit/GitHub/Learning-OPENCV/shrijit/Examples/ColorSpaceConv/CSConv.cpp

CMakeFiles/ColorSpaceConv.dir/CSConv.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ColorSpaceConv.dir/CSConv.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/shrijit/GitHub/Learning-OPENCV/shrijit/Examples/ColorSpaceConv/CSConv.cpp > CMakeFiles/ColorSpaceConv.dir/CSConv.i

CMakeFiles/ColorSpaceConv.dir/CSConv.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ColorSpaceConv.dir/CSConv.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/shrijit/GitHub/Learning-OPENCV/shrijit/Examples/ColorSpaceConv/CSConv.cpp -o CMakeFiles/ColorSpaceConv.dir/CSConv.s

CMakeFiles/ColorSpaceConv.dir/CSConv.o.requires:
.PHONY : CMakeFiles/ColorSpaceConv.dir/CSConv.o.requires

CMakeFiles/ColorSpaceConv.dir/CSConv.o.provides: CMakeFiles/ColorSpaceConv.dir/CSConv.o.requires
	$(MAKE) -f CMakeFiles/ColorSpaceConv.dir/build.make CMakeFiles/ColorSpaceConv.dir/CSConv.o.provides.build
.PHONY : CMakeFiles/ColorSpaceConv.dir/CSConv.o.provides

CMakeFiles/ColorSpaceConv.dir/CSConv.o.provides.build: CMakeFiles/ColorSpaceConv.dir/CSConv.o

# Object files for target ColorSpaceConv
ColorSpaceConv_OBJECTS = \
"CMakeFiles/ColorSpaceConv.dir/CSConv.o"

# External object files for target ColorSpaceConv
ColorSpaceConv_EXTERNAL_OBJECTS =

ColorSpaceConv: CMakeFiles/ColorSpaceConv.dir/CSConv.o
ColorSpaceConv: /usr/local/lib/libopencv_core.so.2.3
ColorSpaceConv: /usr/local/lib/libopencv_highgui.so.2.3
ColorSpaceConv: /usr/local/lib/libopencv_imgproc.so.2.3
ColorSpaceConv: CMakeFiles/ColorSpaceConv.dir/build.make
ColorSpaceConv: CMakeFiles/ColorSpaceConv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ColorSpaceConv"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ColorSpaceConv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ColorSpaceConv.dir/build: ColorSpaceConv
.PHONY : CMakeFiles/ColorSpaceConv.dir/build

CMakeFiles/ColorSpaceConv.dir/requires: CMakeFiles/ColorSpaceConv.dir/CSConv.o.requires
.PHONY : CMakeFiles/ColorSpaceConv.dir/requires

CMakeFiles/ColorSpaceConv.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ColorSpaceConv.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ColorSpaceConv.dir/clean

CMakeFiles/ColorSpaceConv.dir/depend:
	cd /home/shrijit/GitHub/Learning-OPENCV/shrijit/Examples/ColorSpaceConv/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shrijit/GitHub/Learning-OPENCV/shrijit/Examples/ColorSpaceConv /home/shrijit/GitHub/Learning-OPENCV/shrijit/Examples/ColorSpaceConv /home/shrijit/GitHub/Learning-OPENCV/shrijit/Examples/ColorSpaceConv/build /home/shrijit/GitHub/Learning-OPENCV/shrijit/Examples/ColorSpaceConv/build /home/shrijit/GitHub/Learning-OPENCV/shrijit/Examples/ColorSpaceConv/build/CMakeFiles/ColorSpaceConv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ColorSpaceConv.dir/depend
