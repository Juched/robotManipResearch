# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/andrew/robotManipResearch/gpd

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/andrew/robotManipResearch/gpd/build

# Include any dependencies generated for this target.
include CMakeFiles/gpd_classifier.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/gpd_classifier.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gpd_classifier.dir/flags.make

CMakeFiles/gpd_classifier.dir/src/gpd/net/classifier.cpp.o: CMakeFiles/gpd_classifier.dir/flags.make
CMakeFiles/gpd_classifier.dir/src/gpd/net/classifier.cpp.o: ../src/gpd/net/classifier.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andrew/robotManipResearch/gpd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/gpd_classifier.dir/src/gpd/net/classifier.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gpd_classifier.dir/src/gpd/net/classifier.cpp.o -c /home/andrew/robotManipResearch/gpd/src/gpd/net/classifier.cpp

CMakeFiles/gpd_classifier.dir/src/gpd/net/classifier.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gpd_classifier.dir/src/gpd/net/classifier.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andrew/robotManipResearch/gpd/src/gpd/net/classifier.cpp > CMakeFiles/gpd_classifier.dir/src/gpd/net/classifier.cpp.i

CMakeFiles/gpd_classifier.dir/src/gpd/net/classifier.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gpd_classifier.dir/src/gpd/net/classifier.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andrew/robotManipResearch/gpd/src/gpd/net/classifier.cpp -o CMakeFiles/gpd_classifier.dir/src/gpd/net/classifier.cpp.s

CMakeFiles/gpd_classifier.dir/src/gpd/net/eigen_classifier.cpp.o: CMakeFiles/gpd_classifier.dir/flags.make
CMakeFiles/gpd_classifier.dir/src/gpd/net/eigen_classifier.cpp.o: ../src/gpd/net/eigen_classifier.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andrew/robotManipResearch/gpd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/gpd_classifier.dir/src/gpd/net/eigen_classifier.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gpd_classifier.dir/src/gpd/net/eigen_classifier.cpp.o -c /home/andrew/robotManipResearch/gpd/src/gpd/net/eigen_classifier.cpp

CMakeFiles/gpd_classifier.dir/src/gpd/net/eigen_classifier.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gpd_classifier.dir/src/gpd/net/eigen_classifier.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andrew/robotManipResearch/gpd/src/gpd/net/eigen_classifier.cpp > CMakeFiles/gpd_classifier.dir/src/gpd/net/eigen_classifier.cpp.i

CMakeFiles/gpd_classifier.dir/src/gpd/net/eigen_classifier.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gpd_classifier.dir/src/gpd/net/eigen_classifier.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andrew/robotManipResearch/gpd/src/gpd/net/eigen_classifier.cpp -o CMakeFiles/gpd_classifier.dir/src/gpd/net/eigen_classifier.cpp.s

# Object files for target gpd_classifier
gpd_classifier_OBJECTS = \
"CMakeFiles/gpd_classifier.dir/src/gpd/net/classifier.cpp.o" \
"CMakeFiles/gpd_classifier.dir/src/gpd/net/eigen_classifier.cpp.o"

# External object files for target gpd_classifier
gpd_classifier_EXTERNAL_OBJECTS =

libgpd_classifier.a: CMakeFiles/gpd_classifier.dir/src/gpd/net/classifier.cpp.o
libgpd_classifier.a: CMakeFiles/gpd_classifier.dir/src/gpd/net/eigen_classifier.cpp.o
libgpd_classifier.a: CMakeFiles/gpd_classifier.dir/build.make
libgpd_classifier.a: CMakeFiles/gpd_classifier.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/andrew/robotManipResearch/gpd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libgpd_classifier.a"
	$(CMAKE_COMMAND) -P CMakeFiles/gpd_classifier.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gpd_classifier.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gpd_classifier.dir/build: libgpd_classifier.a

.PHONY : CMakeFiles/gpd_classifier.dir/build

CMakeFiles/gpd_classifier.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gpd_classifier.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gpd_classifier.dir/clean

CMakeFiles/gpd_classifier.dir/depend:
	cd /home/andrew/robotManipResearch/gpd/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/andrew/robotManipResearch/gpd /home/andrew/robotManipResearch/gpd /home/andrew/robotManipResearch/gpd/build /home/andrew/robotManipResearch/gpd/build /home/andrew/robotManipResearch/gpd/build/CMakeFiles/gpd_classifier.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gpd_classifier.dir/depend

