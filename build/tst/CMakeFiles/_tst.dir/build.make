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
CMAKE_SOURCE_DIR = /home/danielcob/Documents/Google-Unit-Testing

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/danielcob/Documents/Google-Unit-Testing/build

# Include any dependencies generated for this target.
include tst/CMakeFiles/_tst.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tst/CMakeFiles/_tst.dir/compiler_depend.make

# Include the progress variables for this target.
include tst/CMakeFiles/_tst.dir/progress.make

# Include the compile flags for this target's objects.
include tst/CMakeFiles/_tst.dir/flags.make

tst/CMakeFiles/_tst.dir/Formula-test.cpp.o: tst/CMakeFiles/_tst.dir/flags.make
tst/CMakeFiles/_tst.dir/Formula-test.cpp.o: ../tst/Formula-test.cpp
tst/CMakeFiles/_tst.dir/Formula-test.cpp.o: tst/CMakeFiles/_tst.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/danielcob/Documents/Google-Unit-Testing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tst/CMakeFiles/_tst.dir/Formula-test.cpp.o"
	cd /home/danielcob/Documents/Google-Unit-Testing/build/tst && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tst/CMakeFiles/_tst.dir/Formula-test.cpp.o -MF CMakeFiles/_tst.dir/Formula-test.cpp.o.d -o CMakeFiles/_tst.dir/Formula-test.cpp.o -c /home/danielcob/Documents/Google-Unit-Testing/tst/Formula-test.cpp

tst/CMakeFiles/_tst.dir/Formula-test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/_tst.dir/Formula-test.cpp.i"
	cd /home/danielcob/Documents/Google-Unit-Testing/build/tst && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/danielcob/Documents/Google-Unit-Testing/tst/Formula-test.cpp > CMakeFiles/_tst.dir/Formula-test.cpp.i

tst/CMakeFiles/_tst.dir/Formula-test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/_tst.dir/Formula-test.cpp.s"
	cd /home/danielcob/Documents/Google-Unit-Testing/build/tst && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/danielcob/Documents/Google-Unit-Testing/tst/Formula-test.cpp -o CMakeFiles/_tst.dir/Formula-test.cpp.s

tst/CMakeFiles/_tst.dir/main.cpp.o: tst/CMakeFiles/_tst.dir/flags.make
tst/CMakeFiles/_tst.dir/main.cpp.o: ../tst/main.cpp
tst/CMakeFiles/_tst.dir/main.cpp.o: tst/CMakeFiles/_tst.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/danielcob/Documents/Google-Unit-Testing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tst/CMakeFiles/_tst.dir/main.cpp.o"
	cd /home/danielcob/Documents/Google-Unit-Testing/build/tst && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tst/CMakeFiles/_tst.dir/main.cpp.o -MF CMakeFiles/_tst.dir/main.cpp.o.d -o CMakeFiles/_tst.dir/main.cpp.o -c /home/danielcob/Documents/Google-Unit-Testing/tst/main.cpp

tst/CMakeFiles/_tst.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/_tst.dir/main.cpp.i"
	cd /home/danielcob/Documents/Google-Unit-Testing/build/tst && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/danielcob/Documents/Google-Unit-Testing/tst/main.cpp > CMakeFiles/_tst.dir/main.cpp.i

tst/CMakeFiles/_tst.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/_tst.dir/main.cpp.s"
	cd /home/danielcob/Documents/Google-Unit-Testing/build/tst && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/danielcob/Documents/Google-Unit-Testing/tst/main.cpp -o CMakeFiles/_tst.dir/main.cpp.s

# Object files for target _tst
_tst_OBJECTS = \
"CMakeFiles/_tst.dir/Formula-test.cpp.o" \
"CMakeFiles/_tst.dir/main.cpp.o"

# External object files for target _tst
_tst_EXTERNAL_OBJECTS =

tst/_tst: tst/CMakeFiles/_tst.dir/Formula-test.cpp.o
tst/_tst: tst/CMakeFiles/_tst.dir/main.cpp.o
tst/_tst: tst/CMakeFiles/_tst.dir/build.make
tst/_tst: lib/libgtest.a
tst/_tst: tst/CMakeFiles/_tst.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/danielcob/Documents/Google-Unit-Testing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable _tst"
	cd /home/danielcob/Documents/Google-Unit-Testing/build/tst && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/_tst.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tst/CMakeFiles/_tst.dir/build: tst/_tst
.PHONY : tst/CMakeFiles/_tst.dir/build

tst/CMakeFiles/_tst.dir/clean:
	cd /home/danielcob/Documents/Google-Unit-Testing/build/tst && $(CMAKE_COMMAND) -P CMakeFiles/_tst.dir/cmake_clean.cmake
.PHONY : tst/CMakeFiles/_tst.dir/clean

tst/CMakeFiles/_tst.dir/depend:
	cd /home/danielcob/Documents/Google-Unit-Testing/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/danielcob/Documents/Google-Unit-Testing /home/danielcob/Documents/Google-Unit-Testing/tst /home/danielcob/Documents/Google-Unit-Testing/build /home/danielcob/Documents/Google-Unit-Testing/build/tst /home/danielcob/Documents/Google-Unit-Testing/build/tst/CMakeFiles/_tst.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tst/CMakeFiles/_tst.dir/depend
