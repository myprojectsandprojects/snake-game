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
CMAKE_SOURCE_DIR = /home/eero/all/opengl/snake-game/glfw-3.3.6

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/eero/all/opengl/snake-game/glfw-3.3.6

# Include any dependencies generated for this target.
include tests/CMakeFiles/inputlag.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/inputlag.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/inputlag.dir/flags.make

tests/CMakeFiles/inputlag.dir/inputlag.c.o: tests/CMakeFiles/inputlag.dir/flags.make
tests/CMakeFiles/inputlag.dir/inputlag.c.o: tests/inputlag.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eero/all/opengl/snake-game/glfw-3.3.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/CMakeFiles/inputlag.dir/inputlag.c.o"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/tests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/inputlag.dir/inputlag.c.o   -c /home/eero/all/opengl/snake-game/glfw-3.3.6/tests/inputlag.c

tests/CMakeFiles/inputlag.dir/inputlag.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/inputlag.dir/inputlag.c.i"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/tests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/eero/all/opengl/snake-game/glfw-3.3.6/tests/inputlag.c > CMakeFiles/inputlag.dir/inputlag.c.i

tests/CMakeFiles/inputlag.dir/inputlag.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/inputlag.dir/inputlag.c.s"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/tests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/eero/all/opengl/snake-game/glfw-3.3.6/tests/inputlag.c -o CMakeFiles/inputlag.dir/inputlag.c.s

tests/CMakeFiles/inputlag.dir/inputlag.c.o.requires:

.PHONY : tests/CMakeFiles/inputlag.dir/inputlag.c.o.requires

tests/CMakeFiles/inputlag.dir/inputlag.c.o.provides: tests/CMakeFiles/inputlag.dir/inputlag.c.o.requires
	$(MAKE) -f tests/CMakeFiles/inputlag.dir/build.make tests/CMakeFiles/inputlag.dir/inputlag.c.o.provides.build
.PHONY : tests/CMakeFiles/inputlag.dir/inputlag.c.o.provides

tests/CMakeFiles/inputlag.dir/inputlag.c.o.provides.build: tests/CMakeFiles/inputlag.dir/inputlag.c.o


tests/CMakeFiles/inputlag.dir/__/deps/getopt.c.o: tests/CMakeFiles/inputlag.dir/flags.make
tests/CMakeFiles/inputlag.dir/__/deps/getopt.c.o: deps/getopt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eero/all/opengl/snake-game/glfw-3.3.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/CMakeFiles/inputlag.dir/__/deps/getopt.c.o"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/tests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/inputlag.dir/__/deps/getopt.c.o   -c /home/eero/all/opengl/snake-game/glfw-3.3.6/deps/getopt.c

tests/CMakeFiles/inputlag.dir/__/deps/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/inputlag.dir/__/deps/getopt.c.i"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/tests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/eero/all/opengl/snake-game/glfw-3.3.6/deps/getopt.c > CMakeFiles/inputlag.dir/__/deps/getopt.c.i

tests/CMakeFiles/inputlag.dir/__/deps/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/inputlag.dir/__/deps/getopt.c.s"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/tests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/eero/all/opengl/snake-game/glfw-3.3.6/deps/getopt.c -o CMakeFiles/inputlag.dir/__/deps/getopt.c.s

tests/CMakeFiles/inputlag.dir/__/deps/getopt.c.o.requires:

.PHONY : tests/CMakeFiles/inputlag.dir/__/deps/getopt.c.o.requires

tests/CMakeFiles/inputlag.dir/__/deps/getopt.c.o.provides: tests/CMakeFiles/inputlag.dir/__/deps/getopt.c.o.requires
	$(MAKE) -f tests/CMakeFiles/inputlag.dir/build.make tests/CMakeFiles/inputlag.dir/__/deps/getopt.c.o.provides.build
.PHONY : tests/CMakeFiles/inputlag.dir/__/deps/getopt.c.o.provides

tests/CMakeFiles/inputlag.dir/__/deps/getopt.c.o.provides.build: tests/CMakeFiles/inputlag.dir/__/deps/getopt.c.o


tests/CMakeFiles/inputlag.dir/__/deps/glad_gl.c.o: tests/CMakeFiles/inputlag.dir/flags.make
tests/CMakeFiles/inputlag.dir/__/deps/glad_gl.c.o: deps/glad_gl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eero/all/opengl/snake-game/glfw-3.3.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object tests/CMakeFiles/inputlag.dir/__/deps/glad_gl.c.o"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/tests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/inputlag.dir/__/deps/glad_gl.c.o   -c /home/eero/all/opengl/snake-game/glfw-3.3.6/deps/glad_gl.c

tests/CMakeFiles/inputlag.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/inputlag.dir/__/deps/glad_gl.c.i"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/tests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/eero/all/opengl/snake-game/glfw-3.3.6/deps/glad_gl.c > CMakeFiles/inputlag.dir/__/deps/glad_gl.c.i

tests/CMakeFiles/inputlag.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/inputlag.dir/__/deps/glad_gl.c.s"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/tests && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/eero/all/opengl/snake-game/glfw-3.3.6/deps/glad_gl.c -o CMakeFiles/inputlag.dir/__/deps/glad_gl.c.s

tests/CMakeFiles/inputlag.dir/__/deps/glad_gl.c.o.requires:

.PHONY : tests/CMakeFiles/inputlag.dir/__/deps/glad_gl.c.o.requires

tests/CMakeFiles/inputlag.dir/__/deps/glad_gl.c.o.provides: tests/CMakeFiles/inputlag.dir/__/deps/glad_gl.c.o.requires
	$(MAKE) -f tests/CMakeFiles/inputlag.dir/build.make tests/CMakeFiles/inputlag.dir/__/deps/glad_gl.c.o.provides.build
.PHONY : tests/CMakeFiles/inputlag.dir/__/deps/glad_gl.c.o.provides

tests/CMakeFiles/inputlag.dir/__/deps/glad_gl.c.o.provides.build: tests/CMakeFiles/inputlag.dir/__/deps/glad_gl.c.o


# Object files for target inputlag
inputlag_OBJECTS = \
"CMakeFiles/inputlag.dir/inputlag.c.o" \
"CMakeFiles/inputlag.dir/__/deps/getopt.c.o" \
"CMakeFiles/inputlag.dir/__/deps/glad_gl.c.o"

# External object files for target inputlag
inputlag_EXTERNAL_OBJECTS =

tests/inputlag: tests/CMakeFiles/inputlag.dir/inputlag.c.o
tests/inputlag: tests/CMakeFiles/inputlag.dir/__/deps/getopt.c.o
tests/inputlag: tests/CMakeFiles/inputlag.dir/__/deps/glad_gl.c.o
tests/inputlag: tests/CMakeFiles/inputlag.dir/build.make
tests/inputlag: src/libglfw3.a
tests/inputlag: /usr/lib/x86_64-linux-gnu/libm.so
tests/inputlag: /usr/lib/x86_64-linux-gnu/librt.so
tests/inputlag: /usr/lib/x86_64-linux-gnu/libm.so
tests/inputlag: /usr/lib/x86_64-linux-gnu/libX11.so
tests/inputlag: tests/CMakeFiles/inputlag.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/eero/all/opengl/snake-game/glfw-3.3.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable inputlag"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/inputlag.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/inputlag.dir/build: tests/inputlag

.PHONY : tests/CMakeFiles/inputlag.dir/build

tests/CMakeFiles/inputlag.dir/requires: tests/CMakeFiles/inputlag.dir/inputlag.c.o.requires
tests/CMakeFiles/inputlag.dir/requires: tests/CMakeFiles/inputlag.dir/__/deps/getopt.c.o.requires
tests/CMakeFiles/inputlag.dir/requires: tests/CMakeFiles/inputlag.dir/__/deps/glad_gl.c.o.requires

.PHONY : tests/CMakeFiles/inputlag.dir/requires

tests/CMakeFiles/inputlag.dir/clean:
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/tests && $(CMAKE_COMMAND) -P CMakeFiles/inputlag.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/inputlag.dir/clean

tests/CMakeFiles/inputlag.dir/depend:
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eero/all/opengl/snake-game/glfw-3.3.6 /home/eero/all/opengl/snake-game/glfw-3.3.6/tests /home/eero/all/opengl/snake-game/glfw-3.3.6 /home/eero/all/opengl/snake-game/glfw-3.3.6/tests /home/eero/all/opengl/snake-game/glfw-3.3.6/tests/CMakeFiles/inputlag.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/inputlag.dir/depend

