# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_SOURCE_DIR = /home/timber/Coding/OOP_labs/Lab_6

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/timber/Coding/OOP_labs/Lab_6/build

# Include any dependencies generated for this target.
include CMakeFiles/RPGEditorTests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/RPGEditorTests.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/RPGEditorTests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RPGEditorTests.dir/flags.make

CMakeFiles/RPGEditorTests.dir/codegen:
.PHONY : CMakeFiles/RPGEditorTests.dir/codegen

CMakeFiles/RPGEditorTests.dir/test/test.cpp.o: CMakeFiles/RPGEditorTests.dir/flags.make
CMakeFiles/RPGEditorTests.dir/test/test.cpp.o: /home/timber/Coding/OOP_labs/Lab_6/test/test.cpp
CMakeFiles/RPGEditorTests.dir/test/test.cpp.o: CMakeFiles/RPGEditorTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timber/Coding/OOP_labs/Lab_6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/RPGEditorTests.dir/test/test.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RPGEditorTests.dir/test/test.cpp.o -MF CMakeFiles/RPGEditorTests.dir/test/test.cpp.o.d -o CMakeFiles/RPGEditorTests.dir/test/test.cpp.o -c /home/timber/Coding/OOP_labs/Lab_6/test/test.cpp

CMakeFiles/RPGEditorTests.dir/test/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/RPGEditorTests.dir/test/test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timber/Coding/OOP_labs/Lab_6/test/test.cpp > CMakeFiles/RPGEditorTests.dir/test/test.cpp.i

CMakeFiles/RPGEditorTests.dir/test/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/RPGEditorTests.dir/test/test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timber/Coding/OOP_labs/Lab_6/test/test.cpp -o CMakeFiles/RPGEditorTests.dir/test/test.cpp.s

# Object files for target RPGEditorTests
RPGEditorTests_OBJECTS = \
"CMakeFiles/RPGEditorTests.dir/test/test.cpp.o"

# External object files for target RPGEditorTests
RPGEditorTests_EXTERNAL_OBJECTS =

RPGEditorTests: CMakeFiles/RPGEditorTests.dir/test/test.cpp.o
RPGEditorTests: CMakeFiles/RPGEditorTests.dir/build.make
RPGEditorTests: CMakeFiles/RPGEditorTests.dir/compiler_depend.ts
RPGEditorTests: CMakeFiles/RPGEditorTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/timber/Coding/OOP_labs/Lab_6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable RPGEditorTests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RPGEditorTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RPGEditorTests.dir/build: RPGEditorTests
.PHONY : CMakeFiles/RPGEditorTests.dir/build

CMakeFiles/RPGEditorTests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/RPGEditorTests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/RPGEditorTests.dir/clean

CMakeFiles/RPGEditorTests.dir/depend:
	cd /home/timber/Coding/OOP_labs/Lab_6/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/timber/Coding/OOP_labs/Lab_6 /home/timber/Coding/OOP_labs/Lab_6 /home/timber/Coding/OOP_labs/Lab_6/build /home/timber/Coding/OOP_labs/Lab_6/build /home/timber/Coding/OOP_labs/Lab_6/build/CMakeFiles/RPGEditorTests.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/RPGEditorTests.dir/depend

