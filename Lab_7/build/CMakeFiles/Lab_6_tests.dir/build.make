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
CMAKE_SOURCE_DIR = /home/timber/Coding/OOP_labs/Lab_7

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/timber/Coding/OOP_labs/Lab_7/build

# Include any dependencies generated for this target.
include CMakeFiles/Lab_6_tests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Lab_6_tests.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Lab_6_tests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Lab_6_tests.dir/flags.make

CMakeFiles/Lab_6_tests.dir/codegen:
.PHONY : CMakeFiles/Lab_6_tests.dir/codegen

CMakeFiles/Lab_6_tests.dir/test/test.cpp.o: CMakeFiles/Lab_6_tests.dir/flags.make
CMakeFiles/Lab_6_tests.dir/test/test.cpp.o: /home/timber/Coding/OOP_labs/Lab_7/test/test.cpp
CMakeFiles/Lab_6_tests.dir/test/test.cpp.o: CMakeFiles/Lab_6_tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timber/Coding/OOP_labs/Lab_7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Lab_6_tests.dir/test/test.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab_6_tests.dir/test/test.cpp.o -MF CMakeFiles/Lab_6_tests.dir/test/test.cpp.o.d -o CMakeFiles/Lab_6_tests.dir/test/test.cpp.o -c /home/timber/Coding/OOP_labs/Lab_7/test/test.cpp

CMakeFiles/Lab_6_tests.dir/test/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lab_6_tests.dir/test/test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timber/Coding/OOP_labs/Lab_7/test/test.cpp > CMakeFiles/Lab_6_tests.dir/test/test.cpp.i

CMakeFiles/Lab_6_tests.dir/test/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lab_6_tests.dir/test/test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timber/Coding/OOP_labs/Lab_7/test/test.cpp -o CMakeFiles/Lab_6_tests.dir/test/test.cpp.s

CMakeFiles/Lab_6_tests.dir/src/factory.cpp.o: CMakeFiles/Lab_6_tests.dir/flags.make
CMakeFiles/Lab_6_tests.dir/src/factory.cpp.o: /home/timber/Coding/OOP_labs/Lab_7/src/factory.cpp
CMakeFiles/Lab_6_tests.dir/src/factory.cpp.o: CMakeFiles/Lab_6_tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timber/Coding/OOP_labs/Lab_7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Lab_6_tests.dir/src/factory.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab_6_tests.dir/src/factory.cpp.o -MF CMakeFiles/Lab_6_tests.dir/src/factory.cpp.o.d -o CMakeFiles/Lab_6_tests.dir/src/factory.cpp.o -c /home/timber/Coding/OOP_labs/Lab_7/src/factory.cpp

CMakeFiles/Lab_6_tests.dir/src/factory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lab_6_tests.dir/src/factory.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timber/Coding/OOP_labs/Lab_7/src/factory.cpp > CMakeFiles/Lab_6_tests.dir/src/factory.cpp.i

CMakeFiles/Lab_6_tests.dir/src/factory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lab_6_tests.dir/src/factory.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timber/Coding/OOP_labs/Lab_7/src/factory.cpp -o CMakeFiles/Lab_6_tests.dir/src/factory.cpp.s

CMakeFiles/Lab_6_tests.dir/src/fight.cpp.o: CMakeFiles/Lab_6_tests.dir/flags.make
CMakeFiles/Lab_6_tests.dir/src/fight.cpp.o: /home/timber/Coding/OOP_labs/Lab_7/src/fight.cpp
CMakeFiles/Lab_6_tests.dir/src/fight.cpp.o: CMakeFiles/Lab_6_tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timber/Coding/OOP_labs/Lab_7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Lab_6_tests.dir/src/fight.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab_6_tests.dir/src/fight.cpp.o -MF CMakeFiles/Lab_6_tests.dir/src/fight.cpp.o.d -o CMakeFiles/Lab_6_tests.dir/src/fight.cpp.o -c /home/timber/Coding/OOP_labs/Lab_7/src/fight.cpp

CMakeFiles/Lab_6_tests.dir/src/fight.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lab_6_tests.dir/src/fight.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timber/Coding/OOP_labs/Lab_7/src/fight.cpp > CMakeFiles/Lab_6_tests.dir/src/fight.cpp.i

CMakeFiles/Lab_6_tests.dir/src/fight.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lab_6_tests.dir/src/fight.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timber/Coding/OOP_labs/Lab_7/src/fight.cpp -o CMakeFiles/Lab_6_tests.dir/src/fight.cpp.s

CMakeFiles/Lab_6_tests.dir/src/knight.cpp.o: CMakeFiles/Lab_6_tests.dir/flags.make
CMakeFiles/Lab_6_tests.dir/src/knight.cpp.o: /home/timber/Coding/OOP_labs/Lab_7/src/knight.cpp
CMakeFiles/Lab_6_tests.dir/src/knight.cpp.o: CMakeFiles/Lab_6_tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timber/Coding/OOP_labs/Lab_7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Lab_6_tests.dir/src/knight.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab_6_tests.dir/src/knight.cpp.o -MF CMakeFiles/Lab_6_tests.dir/src/knight.cpp.o.d -o CMakeFiles/Lab_6_tests.dir/src/knight.cpp.o -c /home/timber/Coding/OOP_labs/Lab_7/src/knight.cpp

CMakeFiles/Lab_6_tests.dir/src/knight.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lab_6_tests.dir/src/knight.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timber/Coding/OOP_labs/Lab_7/src/knight.cpp > CMakeFiles/Lab_6_tests.dir/src/knight.cpp.i

CMakeFiles/Lab_6_tests.dir/src/knight.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lab_6_tests.dir/src/knight.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timber/Coding/OOP_labs/Lab_7/src/knight.cpp -o CMakeFiles/Lab_6_tests.dir/src/knight.cpp.s

CMakeFiles/Lab_6_tests.dir/src/merchant.cpp.o: CMakeFiles/Lab_6_tests.dir/flags.make
CMakeFiles/Lab_6_tests.dir/src/merchant.cpp.o: /home/timber/Coding/OOP_labs/Lab_7/src/merchant.cpp
CMakeFiles/Lab_6_tests.dir/src/merchant.cpp.o: CMakeFiles/Lab_6_tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timber/Coding/OOP_labs/Lab_7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Lab_6_tests.dir/src/merchant.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab_6_tests.dir/src/merchant.cpp.o -MF CMakeFiles/Lab_6_tests.dir/src/merchant.cpp.o.d -o CMakeFiles/Lab_6_tests.dir/src/merchant.cpp.o -c /home/timber/Coding/OOP_labs/Lab_7/src/merchant.cpp

CMakeFiles/Lab_6_tests.dir/src/merchant.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lab_6_tests.dir/src/merchant.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timber/Coding/OOP_labs/Lab_7/src/merchant.cpp > CMakeFiles/Lab_6_tests.dir/src/merchant.cpp.i

CMakeFiles/Lab_6_tests.dir/src/merchant.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lab_6_tests.dir/src/merchant.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timber/Coding/OOP_labs/Lab_7/src/merchant.cpp -o CMakeFiles/Lab_6_tests.dir/src/merchant.cpp.s

CMakeFiles/Lab_6_tests.dir/src/npc.cpp.o: CMakeFiles/Lab_6_tests.dir/flags.make
CMakeFiles/Lab_6_tests.dir/src/npc.cpp.o: /home/timber/Coding/OOP_labs/Lab_7/src/npc.cpp
CMakeFiles/Lab_6_tests.dir/src/npc.cpp.o: CMakeFiles/Lab_6_tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timber/Coding/OOP_labs/Lab_7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Lab_6_tests.dir/src/npc.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab_6_tests.dir/src/npc.cpp.o -MF CMakeFiles/Lab_6_tests.dir/src/npc.cpp.o.d -o CMakeFiles/Lab_6_tests.dir/src/npc.cpp.o -c /home/timber/Coding/OOP_labs/Lab_7/src/npc.cpp

CMakeFiles/Lab_6_tests.dir/src/npc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lab_6_tests.dir/src/npc.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timber/Coding/OOP_labs/Lab_7/src/npc.cpp > CMakeFiles/Lab_6_tests.dir/src/npc.cpp.i

CMakeFiles/Lab_6_tests.dir/src/npc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lab_6_tests.dir/src/npc.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timber/Coding/OOP_labs/Lab_7/src/npc.cpp -o CMakeFiles/Lab_6_tests.dir/src/npc.cpp.s

CMakeFiles/Lab_6_tests.dir/src/observer.cpp.o: CMakeFiles/Lab_6_tests.dir/flags.make
CMakeFiles/Lab_6_tests.dir/src/observer.cpp.o: /home/timber/Coding/OOP_labs/Lab_7/src/observer.cpp
CMakeFiles/Lab_6_tests.dir/src/observer.cpp.o: CMakeFiles/Lab_6_tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timber/Coding/OOP_labs/Lab_7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Lab_6_tests.dir/src/observer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab_6_tests.dir/src/observer.cpp.o -MF CMakeFiles/Lab_6_tests.dir/src/observer.cpp.o.d -o CMakeFiles/Lab_6_tests.dir/src/observer.cpp.o -c /home/timber/Coding/OOP_labs/Lab_7/src/observer.cpp

CMakeFiles/Lab_6_tests.dir/src/observer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lab_6_tests.dir/src/observer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timber/Coding/OOP_labs/Lab_7/src/observer.cpp > CMakeFiles/Lab_6_tests.dir/src/observer.cpp.i

CMakeFiles/Lab_6_tests.dir/src/observer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lab_6_tests.dir/src/observer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timber/Coding/OOP_labs/Lab_7/src/observer.cpp -o CMakeFiles/Lab_6_tests.dir/src/observer.cpp.s

CMakeFiles/Lab_6_tests.dir/src/squirrel.cpp.o: CMakeFiles/Lab_6_tests.dir/flags.make
CMakeFiles/Lab_6_tests.dir/src/squirrel.cpp.o: /home/timber/Coding/OOP_labs/Lab_7/src/squirrel.cpp
CMakeFiles/Lab_6_tests.dir/src/squirrel.cpp.o: CMakeFiles/Lab_6_tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timber/Coding/OOP_labs/Lab_7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Lab_6_tests.dir/src/squirrel.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab_6_tests.dir/src/squirrel.cpp.o -MF CMakeFiles/Lab_6_tests.dir/src/squirrel.cpp.o.d -o CMakeFiles/Lab_6_tests.dir/src/squirrel.cpp.o -c /home/timber/Coding/OOP_labs/Lab_7/src/squirrel.cpp

CMakeFiles/Lab_6_tests.dir/src/squirrel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lab_6_tests.dir/src/squirrel.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timber/Coding/OOP_labs/Lab_7/src/squirrel.cpp > CMakeFiles/Lab_6_tests.dir/src/squirrel.cpp.i

CMakeFiles/Lab_6_tests.dir/src/squirrel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lab_6_tests.dir/src/squirrel.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timber/Coding/OOP_labs/Lab_7/src/squirrel.cpp -o CMakeFiles/Lab_6_tests.dir/src/squirrel.cpp.s

# Object files for target Lab_6_tests
Lab_6_tests_OBJECTS = \
"CMakeFiles/Lab_6_tests.dir/test/test.cpp.o" \
"CMakeFiles/Lab_6_tests.dir/src/factory.cpp.o" \
"CMakeFiles/Lab_6_tests.dir/src/fight.cpp.o" \
"CMakeFiles/Lab_6_tests.dir/src/knight.cpp.o" \
"CMakeFiles/Lab_6_tests.dir/src/merchant.cpp.o" \
"CMakeFiles/Lab_6_tests.dir/src/npc.cpp.o" \
"CMakeFiles/Lab_6_tests.dir/src/observer.cpp.o" \
"CMakeFiles/Lab_6_tests.dir/src/squirrel.cpp.o"

# External object files for target Lab_6_tests
Lab_6_tests_EXTERNAL_OBJECTS =

Lab_6_tests: CMakeFiles/Lab_6_tests.dir/test/test.cpp.o
Lab_6_tests: CMakeFiles/Lab_6_tests.dir/src/factory.cpp.o
Lab_6_tests: CMakeFiles/Lab_6_tests.dir/src/fight.cpp.o
Lab_6_tests: CMakeFiles/Lab_6_tests.dir/src/knight.cpp.o
Lab_6_tests: CMakeFiles/Lab_6_tests.dir/src/merchant.cpp.o
Lab_6_tests: CMakeFiles/Lab_6_tests.dir/src/npc.cpp.o
Lab_6_tests: CMakeFiles/Lab_6_tests.dir/src/observer.cpp.o
Lab_6_tests: CMakeFiles/Lab_6_tests.dir/src/squirrel.cpp.o
Lab_6_tests: CMakeFiles/Lab_6_tests.dir/build.make
Lab_6_tests: CMakeFiles/Lab_6_tests.dir/compiler_depend.ts
Lab_6_tests: /usr/lib/libgtest_main.so.1.15.2
Lab_6_tests: /usr/lib/libgtest.so.1.15.2
Lab_6_tests: CMakeFiles/Lab_6_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/timber/Coding/OOP_labs/Lab_7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable Lab_6_tests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Lab_6_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Lab_6_tests.dir/build: Lab_6_tests
.PHONY : CMakeFiles/Lab_6_tests.dir/build

CMakeFiles/Lab_6_tests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Lab_6_tests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Lab_6_tests.dir/clean

CMakeFiles/Lab_6_tests.dir/depend:
	cd /home/timber/Coding/OOP_labs/Lab_7/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/timber/Coding/OOP_labs/Lab_7 /home/timber/Coding/OOP_labs/Lab_7 /home/timber/Coding/OOP_labs/Lab_7/build /home/timber/Coding/OOP_labs/Lab_7/build /home/timber/Coding/OOP_labs/Lab_7/build/CMakeFiles/Lab_6_tests.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Lab_6_tests.dir/depend

