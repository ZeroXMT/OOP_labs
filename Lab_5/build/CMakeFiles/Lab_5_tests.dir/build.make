# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_SOURCE_DIR = /home/timber/Coding/OOP_labs/Lab_5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/timber/Coding/OOP_labs/Lab_5/build

# Include any dependencies generated for this target.
include CMakeFiles/Lab_5_tests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Lab_5_tests.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Lab_5_tests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Lab_5_tests.dir/flags.make

CMakeFiles/Lab_5_tests.dir/test/test.cpp.o: CMakeFiles/Lab_5_tests.dir/flags.make
CMakeFiles/Lab_5_tests.dir/test/test.cpp.o: /home/timber/Coding/OOP_labs/Lab_5/test/test.cpp
CMakeFiles/Lab_5_tests.dir/test/test.cpp.o: CMakeFiles/Lab_5_tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timber/Coding/OOP_labs/Lab_5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Lab_5_tests.dir/test/test.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab_5_tests.dir/test/test.cpp.o -MF CMakeFiles/Lab_5_tests.dir/test/test.cpp.o.d -o CMakeFiles/Lab_5_tests.dir/test/test.cpp.o -c /home/timber/Coding/OOP_labs/Lab_5/test/test.cpp

CMakeFiles/Lab_5_tests.dir/test/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lab_5_tests.dir/test/test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timber/Coding/OOP_labs/Lab_5/test/test.cpp > CMakeFiles/Lab_5_tests.dir/test/test.cpp.i

CMakeFiles/Lab_5_tests.dir/test/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lab_5_tests.dir/test/test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timber/Coding/OOP_labs/Lab_5/test/test.cpp -o CMakeFiles/Lab_5_tests.dir/test/test.cpp.s

CMakeFiles/Lab_5_tests.dir/src/MemoryResources.cpp.o: CMakeFiles/Lab_5_tests.dir/flags.make
CMakeFiles/Lab_5_tests.dir/src/MemoryResources.cpp.o: /home/timber/Coding/OOP_labs/Lab_5/src/MemoryResources.cpp
CMakeFiles/Lab_5_tests.dir/src/MemoryResources.cpp.o: CMakeFiles/Lab_5_tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timber/Coding/OOP_labs/Lab_5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Lab_5_tests.dir/src/MemoryResources.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab_5_tests.dir/src/MemoryResources.cpp.o -MF CMakeFiles/Lab_5_tests.dir/src/MemoryResources.cpp.o.d -o CMakeFiles/Lab_5_tests.dir/src/MemoryResources.cpp.o -c /home/timber/Coding/OOP_labs/Lab_5/src/MemoryResources.cpp

CMakeFiles/Lab_5_tests.dir/src/MemoryResources.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lab_5_tests.dir/src/MemoryResources.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timber/Coding/OOP_labs/Lab_5/src/MemoryResources.cpp > CMakeFiles/Lab_5_tests.dir/src/MemoryResources.cpp.i

CMakeFiles/Lab_5_tests.dir/src/MemoryResources.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lab_5_tests.dir/src/MemoryResources.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timber/Coding/OOP_labs/Lab_5/src/MemoryResources.cpp -o CMakeFiles/Lab_5_tests.dir/src/MemoryResources.cpp.s

# Object files for target Lab_5_tests
Lab_5_tests_OBJECTS = \
"CMakeFiles/Lab_5_tests.dir/test/test.cpp.o" \
"CMakeFiles/Lab_5_tests.dir/src/MemoryResources.cpp.o"

# External object files for target Lab_5_tests
Lab_5_tests_EXTERNAL_OBJECTS =

Lab_5_tests: CMakeFiles/Lab_5_tests.dir/test/test.cpp.o
Lab_5_tests: CMakeFiles/Lab_5_tests.dir/src/MemoryResources.cpp.o
Lab_5_tests: CMakeFiles/Lab_5_tests.dir/build.make
Lab_5_tests: /usr/local/lib/libgtest_main.a
Lab_5_tests: /usr/local/lib/libgtest.a
Lab_5_tests: CMakeFiles/Lab_5_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/timber/Coding/OOP_labs/Lab_5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Lab_5_tests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Lab_5_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Lab_5_tests.dir/build: Lab_5_tests
.PHONY : CMakeFiles/Lab_5_tests.dir/build

CMakeFiles/Lab_5_tests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Lab_5_tests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Lab_5_tests.dir/clean

CMakeFiles/Lab_5_tests.dir/depend:
	cd /home/timber/Coding/OOP_labs/Lab_5/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/timber/Coding/OOP_labs/Lab_5 /home/timber/Coding/OOP_labs/Lab_5 /home/timber/Coding/OOP_labs/Lab_5/build /home/timber/Coding/OOP_labs/Lab_5/build /home/timber/Coding/OOP_labs/Lab_5/build/CMakeFiles/Lab_5_tests.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Lab_5_tests.dir/depend
