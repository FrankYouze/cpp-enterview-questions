# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = "/home/youze/Desktop/C++/log processor"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/youze/Desktop/C++/log processor/build"

# Include any dependencies generated for this target.
include CMakeFiles/LogProcessor.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/LogProcessor.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/LogProcessor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LogProcessor.dir/flags.make

CMakeFiles/LogProcessor.dir/main.cpp.o: CMakeFiles/LogProcessor.dir/flags.make
CMakeFiles/LogProcessor.dir/main.cpp.o: /home/youze/Desktop/C++/log\ processor/main.cpp
CMakeFiles/LogProcessor.dir/main.cpp.o: CMakeFiles/LogProcessor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/youze/Desktop/C++/log processor/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LogProcessor.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/LogProcessor.dir/main.cpp.o -MF CMakeFiles/LogProcessor.dir/main.cpp.o.d -o CMakeFiles/LogProcessor.dir/main.cpp.o -c "/home/youze/Desktop/C++/log processor/main.cpp"

CMakeFiles/LogProcessor.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/LogProcessor.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/youze/Desktop/C++/log processor/main.cpp" > CMakeFiles/LogProcessor.dir/main.cpp.i

CMakeFiles/LogProcessor.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/LogProcessor.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/youze/Desktop/C++/log processor/main.cpp" -o CMakeFiles/LogProcessor.dir/main.cpp.s

# Object files for target LogProcessor
LogProcessor_OBJECTS = \
"CMakeFiles/LogProcessor.dir/main.cpp.o"

# External object files for target LogProcessor
LogProcessor_EXTERNAL_OBJECTS =

LogProcessor: CMakeFiles/LogProcessor.dir/main.cpp.o
LogProcessor: CMakeFiles/LogProcessor.dir/build.make
LogProcessor: /usr/lib/x86_64-linux-gnu/libsqlite3.so
LogProcessor: CMakeFiles/LogProcessor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/home/youze/Desktop/C++/log processor/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable LogProcessor"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LogProcessor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LogProcessor.dir/build: LogProcessor
.PHONY : CMakeFiles/LogProcessor.dir/build

CMakeFiles/LogProcessor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LogProcessor.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LogProcessor.dir/clean

CMakeFiles/LogProcessor.dir/depend:
	cd "/home/youze/Desktop/C++/log processor/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/youze/Desktop/C++/log processor" "/home/youze/Desktop/C++/log processor" "/home/youze/Desktop/C++/log processor/build" "/home/youze/Desktop/C++/log processor/build" "/home/youze/Desktop/C++/log processor/build/CMakeFiles/LogProcessor.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/LogProcessor.dir/depend

