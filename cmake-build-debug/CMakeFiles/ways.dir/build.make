# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.14

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.3.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.3.4\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Programms\111\ways

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Programms\111\ways\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ways.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ways.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ways.dir/flags.make

CMakeFiles/ways.dir/main.cpp.obj: CMakeFiles/ways.dir/flags.make
CMakeFiles/ways.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Programms\111\ways\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ways.dir/main.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\ways.dir\main.cpp.obj -c D:\Programms\111\ways\main.cpp

CMakeFiles/ways.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ways.dir/main.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Programms\111\ways\main.cpp > CMakeFiles\ways.dir\main.cpp.i

CMakeFiles/ways.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ways.dir/main.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Programms\111\ways\main.cpp -o CMakeFiles\ways.dir\main.cpp.s

# Object files for target ways
ways_OBJECTS = \
"CMakeFiles/ways.dir/main.cpp.obj"

# External object files for target ways
ways_EXTERNAL_OBJECTS =

ways.exe: CMakeFiles/ways.dir/main.cpp.obj
ways.exe: CMakeFiles/ways.dir/build.make
ways.exe: CMakeFiles/ways.dir/linklibs.rsp
ways.exe: CMakeFiles/ways.dir/objects1.rsp
ways.exe: CMakeFiles/ways.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Programms\111\ways\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ways.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ways.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ways.dir/build: ways.exe

.PHONY : CMakeFiles/ways.dir/build

CMakeFiles/ways.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\ways.dir\cmake_clean.cmake
.PHONY : CMakeFiles/ways.dir/clean

CMakeFiles/ways.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Programms\111\ways D:\Programms\111\ways D:\Programms\111\ways\cmake-build-debug D:\Programms\111\ways\cmake-build-debug D:\Programms\111\ways\cmake-build-debug\CMakeFiles\ways.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ways.dir/depend
