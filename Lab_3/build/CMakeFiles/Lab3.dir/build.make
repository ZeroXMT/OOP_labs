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
CMAKE_SOURCE_DIR = /home/timber/Coding/OOP_labs/Lab_3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/timber/Coding/OOP_labs/Lab_3/build

# Include any dependencies generated for this target.
include CMakeFiles/Lab3.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Lab3.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Lab3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Lab3.dir/flags.make

CMakeFiles/Lab3.dir/src/figure.cpp.o: CMakeFiles/Lab3.dir/flags.make
CMakeFiles/Lab3.dir/src/figure.cpp.o: /home/timber/Coding/OOP_labs/Lab_3/src/figure.cpp
CMakeFiles/Lab3.dir/src/figure.cpp.o: CMakeFiles/Lab3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timber/Coding/OOP_labs/Lab_3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Lab3.dir/src/figure.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab3.dir/src/figure.cpp.o -MF CMakeFiles/Lab3.dir/src/figure.cpp.o.d -o CMakeFiles/Lab3.dir/src/figure.cpp.o -c /home/timber/Coding/OOP_labs/Lab_3/src/figure.cpp

CMakeFiles/Lab3.dir/src/figure.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lab3.dir/src/figure.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timber/Coding/OOP_labs/Lab_3/src/figure.cpp > CMakeFiles/Lab3.dir/src/figure.cpp.i

CMakeFiles/Lab3.dir/src/figure.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lab3.dir/src/figure.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timber/Coding/OOP_labs/Lab_3/src/figure.cpp -o CMakeFiles/Lab3.dir/src/figure.cpp.s

CMakeFiles/Lab3.dir/src/rectangle.cpp.o: CMakeFiles/Lab3.dir/flags.make
CMakeFiles/Lab3.dir/src/rectangle.cpp.o: /home/timber/Coding/OOP_labs/Lab_3/src/rectangle.cpp
CMakeFiles/Lab3.dir/src/rectangle.cpp.o: CMakeFiles/Lab3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timber/Coding/OOP_labs/Lab_3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Lab3.dir/src/rectangle.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab3.dir/src/rectangle.cpp.o -MF CMakeFiles/Lab3.dir/src/rectangle.cpp.o.d -o CMakeFiles/Lab3.dir/src/rectangle.cpp.o -c /home/timber/Coding/OOP_labs/Lab_3/src/rectangle.cpp

CMakeFiles/Lab3.dir/src/rectangle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lab3.dir/src/rectangle.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timber/Coding/OOP_labs/Lab_3/src/rectangle.cpp > CMakeFiles/Lab3.dir/src/rectangle.cpp.i

CMakeFiles/Lab3.dir/src/rectangle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lab3.dir/src/rectangle.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timber/Coding/OOP_labs/Lab_3/src/rectangle.cpp -o CMakeFiles/Lab3.dir/src/rectangle.cpp.s

CMakeFiles/Lab3.dir/src/square.cpp.o: CMakeFiles/Lab3.dir/flags.make
CMakeFiles/Lab3.dir/src/square.cpp.o: /home/timber/Coding/OOP_labs/Lab_3/src/square.cpp
CMakeFiles/Lab3.dir/src/square.cpp.o: CMakeFiles/Lab3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timber/Coding/OOP_labs/Lab_3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Lab3.dir/src/square.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab3.dir/src/square.cpp.o -MF CMakeFiles/Lab3.dir/src/square.cpp.o.d -o CMakeFiles/Lab3.dir/src/square.cpp.o -c /home/timber/Coding/OOP_labs/Lab_3/src/square.cpp

CMakeFiles/Lab3.dir/src/square.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lab3.dir/src/square.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timber/Coding/OOP_labs/Lab_3/src/square.cpp > CMakeFiles/Lab3.dir/src/square.cpp.i

CMakeFiles/Lab3.dir/src/square.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lab3.dir/src/square.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timber/Coding/OOP_labs/Lab_3/src/square.cpp -o CMakeFiles/Lab3.dir/src/square.cpp.s

CMakeFiles/Lab3.dir/src/trapezoid.cpp.o: CMakeFiles/Lab3.dir/flags.make
CMakeFiles/Lab3.dir/src/trapezoid.cpp.o: /home/timber/Coding/OOP_labs/Lab_3/src/trapezoid.cpp
CMakeFiles/Lab3.dir/src/trapezoid.cpp.o: CMakeFiles/Lab3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timber/Coding/OOP_labs/Lab_3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Lab3.dir/src/trapezoid.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab3.dir/src/trapezoid.cpp.o -MF CMakeFiles/Lab3.dir/src/trapezoid.cpp.o.d -o CMakeFiles/Lab3.dir/src/trapezoid.cpp.o -c /home/timber/Coding/OOP_labs/Lab_3/src/trapezoid.cpp

CMakeFiles/Lab3.dir/src/trapezoid.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lab3.dir/src/trapezoid.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timber/Coding/OOP_labs/Lab_3/src/trapezoid.cpp > CMakeFiles/Lab3.dir/src/trapezoid.cpp.i

CMakeFiles/Lab3.dir/src/trapezoid.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lab3.dir/src/trapezoid.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timber/Coding/OOP_labs/Lab_3/src/trapezoid.cpp -o CMakeFiles/Lab3.dir/src/trapezoid.cpp.s

CMakeFiles/Lab3.dir/main.cpp.o: CMakeFiles/Lab3.dir/flags.make
CMakeFiles/Lab3.dir/main.cpp.o: /home/timber/Coding/OOP_labs/Lab_3/main.cpp
CMakeFiles/Lab3.dir/main.cpp.o: CMakeFiles/Lab3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/timber/Coding/OOP_labs/Lab_3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Lab3.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab3.dir/main.cpp.o -MF CMakeFiles/Lab3.dir/main.cpp.o.d -o CMakeFiles/Lab3.dir/main.cpp.o -c /home/timber/Coding/OOP_labs/Lab_3/main.cpp

CMakeFiles/Lab3.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Lab3.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timber/Coding/OOP_labs/Lab_3/main.cpp > CMakeFiles/Lab3.dir/main.cpp.i

CMakeFiles/Lab3.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Lab3.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timber/Coding/OOP_labs/Lab_3/main.cpp -o CMakeFiles/Lab3.dir/main.cpp.s

# Object files for target Lab3
Lab3_OBJECTS = \
"CMakeFiles/Lab3.dir/src/figure.cpp.o" \
"CMakeFiles/Lab3.dir/src/rectangle.cpp.o" \
"CMakeFiles/Lab3.dir/src/square.cpp.o" \
"CMakeFiles/Lab3.dir/src/trapezoid.cpp.o" \
"CMakeFiles/Lab3.dir/main.cpp.o"

# External object files for target Lab3
Lab3_EXTERNAL_OBJECTS =

Lab3: CMakeFiles/Lab3.dir/src/figure.cpp.o
Lab3: CMakeFiles/Lab3.dir/src/rectangle.cpp.o
Lab3: CMakeFiles/Lab3.dir/src/square.cpp.o
Lab3: CMakeFiles/Lab3.dir/src/trapezoid.cpp.o
Lab3: CMakeFiles/Lab3.dir/main.cpp.o
Lab3: CMakeFiles/Lab3.dir/build.make
Lab3: CMakeFiles/Lab3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/timber/Coding/OOP_labs/Lab_3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable Lab3"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Lab3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Lab3.dir/build: Lab3
.PHONY : CMakeFiles/Lab3.dir/build

CMakeFiles/Lab3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Lab3.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Lab3.dir/clean

CMakeFiles/Lab3.dir/depend:
	cd /home/timber/Coding/OOP_labs/Lab_3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/timber/Coding/OOP_labs/Lab_3 /home/timber/Coding/OOP_labs/Lab_3 /home/timber/Coding/OOP_labs/Lab_3/build /home/timber/Coding/OOP_labs/Lab_3/build /home/timber/Coding/OOP_labs/Lab_3/build/CMakeFiles/Lab3.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Lab3.dir/depend
