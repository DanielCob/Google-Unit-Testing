# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/danielcob/Documents/Unit-Testing

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/danielcob/Documents/Unit-Testing/build

# Include any dependencies generated for this target.
include tst/CMakeFiles/Unit-Testing_tst.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tst/CMakeFiles/Unit-Testing_tst.dir/compiler_depend.make

# Include the progress variables for this target.
include tst/CMakeFiles/Unit-Testing_tst.dir/progress.make

# Include the compile flags for this target's objects.
include tst/CMakeFiles/Unit-Testing_tst.dir/flags.make

tst/CMakeFiles/Unit-Testing_tst.dir/main.cpp.o: tst/CMakeFiles/Unit-Testing_tst.dir/flags.make
tst/CMakeFiles/Unit-Testing_tst.dir/main.cpp.o: ../tst/main.cpp
tst/CMakeFiles/Unit-Testing_tst.dir/main.cpp.o: tst/CMakeFiles/Unit-Testing_tst.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/danielcob/Documents/Unit-Testing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tst/CMakeFiles/Unit-Testing_tst.dir/main.cpp.o"
	cd /home/danielcob/Documents/Unit-Testing/build/tst && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tst/CMakeFiles/Unit-Testing_tst.dir/main.cpp.o -MF CMakeFiles/Unit-Testing_tst.dir/main.cpp.o.d -o CMakeFiles/Unit-Testing_tst.dir/main.cpp.o -c /home/danielcob/Documents/Unit-Testing/tst/main.cpp

tst/CMakeFiles/Unit-Testing_tst.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Unit-Testing_tst.dir/main.cpp.i"
	cd /home/danielcob/Documents/Unit-Testing/build/tst && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/danielcob/Documents/Unit-Testing/tst/main.cpp > CMakeFiles/Unit-Testing_tst.dir/main.cpp.i

tst/CMakeFiles/Unit-Testing_tst.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Unit-Testing_tst.dir/main.cpp.s"
	cd /home/danielcob/Documents/Unit-Testing/build/tst && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/danielcob/Documents/Unit-Testing/tst/main.cpp -o CMakeFiles/Unit-Testing_tst.dir/main.cpp.s

# Object files for target Unit-Testing_tst
Unit__Testing_tst_OBJECTS = \
"CMakeFiles/Unit-Testing_tst.dir/main.cpp.o"

# External object files for target Unit-Testing_tst
Unit__Testing_tst_EXTERNAL_OBJECTS =

tst/Unit-Testing_tst: tst/CMakeFiles/Unit-Testing_tst.dir/main.cpp.o
tst/Unit-Testing_tst: tst/CMakeFiles/Unit-Testing_tst.dir/build.make
tst/Unit-Testing_tst: src/libUnit-Testing_lib.a
tst/Unit-Testing_tst: lib/libgtest.a
tst/Unit-Testing_tst: src/libUnit-Testing_lib.a
tst/Unit-Testing_tst: lib/libgmock.a
tst/Unit-Testing_tst: lib/libgtest.a
tst/Unit-Testing_tst: tst/CMakeFiles/Unit-Testing_tst.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/danielcob/Documents/Unit-Testing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Unit-Testing_tst"
	cd /home/danielcob/Documents/Unit-Testing/build/tst && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Unit-Testing_tst.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tst/CMakeFiles/Unit-Testing_tst.dir/build: tst/Unit-Testing_tst
.PHONY : tst/CMakeFiles/Unit-Testing_tst.dir/build

tst/CMakeFiles/Unit-Testing_tst.dir/clean:
	cd /home/danielcob/Documents/Unit-Testing/build/tst && $(CMAKE_COMMAND) -P CMakeFiles/Unit-Testing_tst.dir/cmake_clean.cmake
.PHONY : tst/CMakeFiles/Unit-Testing_tst.dir/clean

tst/CMakeFiles/Unit-Testing_tst.dir/depend:
	cd /home/danielcob/Documents/Unit-Testing/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/danielcob/Documents/Unit-Testing /home/danielcob/Documents/Unit-Testing/tst /home/danielcob/Documents/Unit-Testing/build /home/danielcob/Documents/Unit-Testing/build/tst /home/danielcob/Documents/Unit-Testing/build/tst/CMakeFiles/Unit-Testing_tst.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tst/CMakeFiles/Unit-Testing_tst.dir/depend

