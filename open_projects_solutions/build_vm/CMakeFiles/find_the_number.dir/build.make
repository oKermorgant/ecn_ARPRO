# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /media/sf_code/Labs/ARPRO/open_projects_solutions

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/sf_code/Labs/ARPRO/open_projects_solutions/build_vm

# Include any dependencies generated for this target.
include CMakeFiles/find_the_number.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/find_the_number.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/find_the_number.dir/flags.make

CMakeFiles/find_the_number.dir/basics/find_the_number.cpp.o: CMakeFiles/find_the_number.dir/flags.make
CMakeFiles/find_the_number.dir/basics/find_the_number.cpp.o: ../basics/find_the_number.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/sf_code/Labs/ARPRO/open_projects_solutions/build_vm/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/find_the_number.dir/basics/find_the_number.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/find_the_number.dir/basics/find_the_number.cpp.o -c /media/sf_code/Labs/ARPRO/open_projects_solutions/basics/find_the_number.cpp

CMakeFiles/find_the_number.dir/basics/find_the_number.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/find_the_number.dir/basics/find_the_number.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/sf_code/Labs/ARPRO/open_projects_solutions/basics/find_the_number.cpp > CMakeFiles/find_the_number.dir/basics/find_the_number.cpp.i

CMakeFiles/find_the_number.dir/basics/find_the_number.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/find_the_number.dir/basics/find_the_number.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/sf_code/Labs/ARPRO/open_projects_solutions/basics/find_the_number.cpp -o CMakeFiles/find_the_number.dir/basics/find_the_number.cpp.s

CMakeFiles/find_the_number.dir/basics/find_the_number.cpp.o.requires:

.PHONY : CMakeFiles/find_the_number.dir/basics/find_the_number.cpp.o.requires

CMakeFiles/find_the_number.dir/basics/find_the_number.cpp.o.provides: CMakeFiles/find_the_number.dir/basics/find_the_number.cpp.o.requires
	$(MAKE) -f CMakeFiles/find_the_number.dir/build.make CMakeFiles/find_the_number.dir/basics/find_the_number.cpp.o.provides.build
.PHONY : CMakeFiles/find_the_number.dir/basics/find_the_number.cpp.o.provides

CMakeFiles/find_the_number.dir/basics/find_the_number.cpp.o.provides.build: CMakeFiles/find_the_number.dir/basics/find_the_number.cpp.o


# Object files for target find_the_number
find_the_number_OBJECTS = \
"CMakeFiles/find_the_number.dir/basics/find_the_number.cpp.o"

# External object files for target find_the_number
find_the_number_EXTERNAL_OBJECTS =

find_the_number: CMakeFiles/find_the_number.dir/basics/find_the_number.cpp.o
find_the_number: CMakeFiles/find_the_number.dir/build.make
find_the_number: CMakeFiles/find_the_number.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/sf_code/Labs/ARPRO/open_projects_solutions/build_vm/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable find_the_number"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/find_the_number.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/find_the_number.dir/build: find_the_number

.PHONY : CMakeFiles/find_the_number.dir/build

CMakeFiles/find_the_number.dir/requires: CMakeFiles/find_the_number.dir/basics/find_the_number.cpp.o.requires

.PHONY : CMakeFiles/find_the_number.dir/requires

CMakeFiles/find_the_number.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/find_the_number.dir/cmake_clean.cmake
.PHONY : CMakeFiles/find_the_number.dir/clean

CMakeFiles/find_the_number.dir/depend:
	cd /media/sf_code/Labs/ARPRO/open_projects_solutions/build_vm && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/sf_code/Labs/ARPRO/open_projects_solutions /media/sf_code/Labs/ARPRO/open_projects_solutions /media/sf_code/Labs/ARPRO/open_projects_solutions/build_vm /media/sf_code/Labs/ARPRO/open_projects_solutions/build_vm /media/sf_code/Labs/ARPRO/open_projects_solutions/build_vm/CMakeFiles/find_the_number.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/find_the_number.dir/depend
