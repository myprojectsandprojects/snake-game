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
include src/CMakeFiles/glfw.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/glfw.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/glfw.dir/flags.make

src/CMakeFiles/glfw.dir/context.c.o: src/CMakeFiles/glfw.dir/flags.make
src/CMakeFiles/glfw.dir/context.c.o: src/context.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eero/all/opengl/snake-game/glfw-3.3.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/glfw.dir/context.c.o"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles/glfw.dir/context.c.o   -c /home/eero/all/opengl/snake-game/glfw-3.3.6/src/context.c

src/CMakeFiles/glfw.dir/context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/context.c.i"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/eero/all/opengl/snake-game/glfw-3.3.6/src/context.c > CMakeFiles/glfw.dir/context.c.i

src/CMakeFiles/glfw.dir/context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/context.c.s"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/eero/all/opengl/snake-game/glfw-3.3.6/src/context.c -o CMakeFiles/glfw.dir/context.c.s

src/CMakeFiles/glfw.dir/context.c.o.requires:

.PHONY : src/CMakeFiles/glfw.dir/context.c.o.requires

src/CMakeFiles/glfw.dir/context.c.o.provides: src/CMakeFiles/glfw.dir/context.c.o.requires
	$(MAKE) -f src/CMakeFiles/glfw.dir/build.make src/CMakeFiles/glfw.dir/context.c.o.provides.build
.PHONY : src/CMakeFiles/glfw.dir/context.c.o.provides

src/CMakeFiles/glfw.dir/context.c.o.provides.build: src/CMakeFiles/glfw.dir/context.c.o


src/CMakeFiles/glfw.dir/init.c.o: src/CMakeFiles/glfw.dir/flags.make
src/CMakeFiles/glfw.dir/init.c.o: src/init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eero/all/opengl/snake-game/glfw-3.3.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/CMakeFiles/glfw.dir/init.c.o"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles/glfw.dir/init.c.o   -c /home/eero/all/opengl/snake-game/glfw-3.3.6/src/init.c

src/CMakeFiles/glfw.dir/init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/init.c.i"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/eero/all/opengl/snake-game/glfw-3.3.6/src/init.c > CMakeFiles/glfw.dir/init.c.i

src/CMakeFiles/glfw.dir/init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/init.c.s"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/eero/all/opengl/snake-game/glfw-3.3.6/src/init.c -o CMakeFiles/glfw.dir/init.c.s

src/CMakeFiles/glfw.dir/init.c.o.requires:

.PHONY : src/CMakeFiles/glfw.dir/init.c.o.requires

src/CMakeFiles/glfw.dir/init.c.o.provides: src/CMakeFiles/glfw.dir/init.c.o.requires
	$(MAKE) -f src/CMakeFiles/glfw.dir/build.make src/CMakeFiles/glfw.dir/init.c.o.provides.build
.PHONY : src/CMakeFiles/glfw.dir/init.c.o.provides

src/CMakeFiles/glfw.dir/init.c.o.provides.build: src/CMakeFiles/glfw.dir/init.c.o


src/CMakeFiles/glfw.dir/input.c.o: src/CMakeFiles/glfw.dir/flags.make
src/CMakeFiles/glfw.dir/input.c.o: src/input.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eero/all/opengl/snake-game/glfw-3.3.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/CMakeFiles/glfw.dir/input.c.o"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles/glfw.dir/input.c.o   -c /home/eero/all/opengl/snake-game/glfw-3.3.6/src/input.c

src/CMakeFiles/glfw.dir/input.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/input.c.i"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/eero/all/opengl/snake-game/glfw-3.3.6/src/input.c > CMakeFiles/glfw.dir/input.c.i

src/CMakeFiles/glfw.dir/input.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/input.c.s"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/eero/all/opengl/snake-game/glfw-3.3.6/src/input.c -o CMakeFiles/glfw.dir/input.c.s

src/CMakeFiles/glfw.dir/input.c.o.requires:

.PHONY : src/CMakeFiles/glfw.dir/input.c.o.requires

src/CMakeFiles/glfw.dir/input.c.o.provides: src/CMakeFiles/glfw.dir/input.c.o.requires
	$(MAKE) -f src/CMakeFiles/glfw.dir/build.make src/CMakeFiles/glfw.dir/input.c.o.provides.build
.PHONY : src/CMakeFiles/glfw.dir/input.c.o.provides

src/CMakeFiles/glfw.dir/input.c.o.provides.build: src/CMakeFiles/glfw.dir/input.c.o


src/CMakeFiles/glfw.dir/monitor.c.o: src/CMakeFiles/glfw.dir/flags.make
src/CMakeFiles/glfw.dir/monitor.c.o: src/monitor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eero/all/opengl/snake-game/glfw-3.3.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object src/CMakeFiles/glfw.dir/monitor.c.o"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles/glfw.dir/monitor.c.o   -c /home/eero/all/opengl/snake-game/glfw-3.3.6/src/monitor.c

src/CMakeFiles/glfw.dir/monitor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/monitor.c.i"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/eero/all/opengl/snake-game/glfw-3.3.6/src/monitor.c > CMakeFiles/glfw.dir/monitor.c.i

src/CMakeFiles/glfw.dir/monitor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/monitor.c.s"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/eero/all/opengl/snake-game/glfw-3.3.6/src/monitor.c -o CMakeFiles/glfw.dir/monitor.c.s

src/CMakeFiles/glfw.dir/monitor.c.o.requires:

.PHONY : src/CMakeFiles/glfw.dir/monitor.c.o.requires

src/CMakeFiles/glfw.dir/monitor.c.o.provides: src/CMakeFiles/glfw.dir/monitor.c.o.requires
	$(MAKE) -f src/CMakeFiles/glfw.dir/build.make src/CMakeFiles/glfw.dir/monitor.c.o.provides.build
.PHONY : src/CMakeFiles/glfw.dir/monitor.c.o.provides

src/CMakeFiles/glfw.dir/monitor.c.o.provides.build: src/CMakeFiles/glfw.dir/monitor.c.o


src/CMakeFiles/glfw.dir/vulkan.c.o: src/CMakeFiles/glfw.dir/flags.make
src/CMakeFiles/glfw.dir/vulkan.c.o: src/vulkan.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eero/all/opengl/snake-game/glfw-3.3.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object src/CMakeFiles/glfw.dir/vulkan.c.o"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles/glfw.dir/vulkan.c.o   -c /home/eero/all/opengl/snake-game/glfw-3.3.6/src/vulkan.c

src/CMakeFiles/glfw.dir/vulkan.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/vulkan.c.i"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/eero/all/opengl/snake-game/glfw-3.3.6/src/vulkan.c > CMakeFiles/glfw.dir/vulkan.c.i

src/CMakeFiles/glfw.dir/vulkan.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/vulkan.c.s"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/eero/all/opengl/snake-game/glfw-3.3.6/src/vulkan.c -o CMakeFiles/glfw.dir/vulkan.c.s

src/CMakeFiles/glfw.dir/vulkan.c.o.requires:

.PHONY : src/CMakeFiles/glfw.dir/vulkan.c.o.requires

src/CMakeFiles/glfw.dir/vulkan.c.o.provides: src/CMakeFiles/glfw.dir/vulkan.c.o.requires
	$(MAKE) -f src/CMakeFiles/glfw.dir/build.make src/CMakeFiles/glfw.dir/vulkan.c.o.provides.build
.PHONY : src/CMakeFiles/glfw.dir/vulkan.c.o.provides

src/CMakeFiles/glfw.dir/vulkan.c.o.provides.build: src/CMakeFiles/glfw.dir/vulkan.c.o


src/CMakeFiles/glfw.dir/window.c.o: src/CMakeFiles/glfw.dir/flags.make
src/CMakeFiles/glfw.dir/window.c.o: src/window.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eero/all/opengl/snake-game/glfw-3.3.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object src/CMakeFiles/glfw.dir/window.c.o"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles/glfw.dir/window.c.o   -c /home/eero/all/opengl/snake-game/glfw-3.3.6/src/window.c

src/CMakeFiles/glfw.dir/window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/window.c.i"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/eero/all/opengl/snake-game/glfw-3.3.6/src/window.c > CMakeFiles/glfw.dir/window.c.i

src/CMakeFiles/glfw.dir/window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/window.c.s"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/eero/all/opengl/snake-game/glfw-3.3.6/src/window.c -o CMakeFiles/glfw.dir/window.c.s

src/CMakeFiles/glfw.dir/window.c.o.requires:

.PHONY : src/CMakeFiles/glfw.dir/window.c.o.requires

src/CMakeFiles/glfw.dir/window.c.o.provides: src/CMakeFiles/glfw.dir/window.c.o.requires
	$(MAKE) -f src/CMakeFiles/glfw.dir/build.make src/CMakeFiles/glfw.dir/window.c.o.provides.build
.PHONY : src/CMakeFiles/glfw.dir/window.c.o.provides

src/CMakeFiles/glfw.dir/window.c.o.provides.build: src/CMakeFiles/glfw.dir/window.c.o


src/CMakeFiles/glfw.dir/x11_init.c.o: src/CMakeFiles/glfw.dir/flags.make
src/CMakeFiles/glfw.dir/x11_init.c.o: src/x11_init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eero/all/opengl/snake-game/glfw-3.3.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object src/CMakeFiles/glfw.dir/x11_init.c.o"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/x11_init.c.o   -c /home/eero/all/opengl/snake-game/glfw-3.3.6/src/x11_init.c

src/CMakeFiles/glfw.dir/x11_init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/x11_init.c.i"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/eero/all/opengl/snake-game/glfw-3.3.6/src/x11_init.c > CMakeFiles/glfw.dir/x11_init.c.i

src/CMakeFiles/glfw.dir/x11_init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/x11_init.c.s"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/eero/all/opengl/snake-game/glfw-3.3.6/src/x11_init.c -o CMakeFiles/glfw.dir/x11_init.c.s

src/CMakeFiles/glfw.dir/x11_init.c.o.requires:

.PHONY : src/CMakeFiles/glfw.dir/x11_init.c.o.requires

src/CMakeFiles/glfw.dir/x11_init.c.o.provides: src/CMakeFiles/glfw.dir/x11_init.c.o.requires
	$(MAKE) -f src/CMakeFiles/glfw.dir/build.make src/CMakeFiles/glfw.dir/x11_init.c.o.provides.build
.PHONY : src/CMakeFiles/glfw.dir/x11_init.c.o.provides

src/CMakeFiles/glfw.dir/x11_init.c.o.provides.build: src/CMakeFiles/glfw.dir/x11_init.c.o


src/CMakeFiles/glfw.dir/x11_monitor.c.o: src/CMakeFiles/glfw.dir/flags.make
src/CMakeFiles/glfw.dir/x11_monitor.c.o: src/x11_monitor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eero/all/opengl/snake-game/glfw-3.3.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object src/CMakeFiles/glfw.dir/x11_monitor.c.o"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/x11_monitor.c.o   -c /home/eero/all/opengl/snake-game/glfw-3.3.6/src/x11_monitor.c

src/CMakeFiles/glfw.dir/x11_monitor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/x11_monitor.c.i"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/eero/all/opengl/snake-game/glfw-3.3.6/src/x11_monitor.c > CMakeFiles/glfw.dir/x11_monitor.c.i

src/CMakeFiles/glfw.dir/x11_monitor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/x11_monitor.c.s"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/eero/all/opengl/snake-game/glfw-3.3.6/src/x11_monitor.c -o CMakeFiles/glfw.dir/x11_monitor.c.s

src/CMakeFiles/glfw.dir/x11_monitor.c.o.requires:

.PHONY : src/CMakeFiles/glfw.dir/x11_monitor.c.o.requires

src/CMakeFiles/glfw.dir/x11_monitor.c.o.provides: src/CMakeFiles/glfw.dir/x11_monitor.c.o.requires
	$(MAKE) -f src/CMakeFiles/glfw.dir/build.make src/CMakeFiles/glfw.dir/x11_monitor.c.o.provides.build
.PHONY : src/CMakeFiles/glfw.dir/x11_monitor.c.o.provides

src/CMakeFiles/glfw.dir/x11_monitor.c.o.provides.build: src/CMakeFiles/glfw.dir/x11_monitor.c.o


src/CMakeFiles/glfw.dir/x11_window.c.o: src/CMakeFiles/glfw.dir/flags.make
src/CMakeFiles/glfw.dir/x11_window.c.o: src/x11_window.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eero/all/opengl/snake-game/glfw-3.3.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object src/CMakeFiles/glfw.dir/x11_window.c.o"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/x11_window.c.o   -c /home/eero/all/opengl/snake-game/glfw-3.3.6/src/x11_window.c

src/CMakeFiles/glfw.dir/x11_window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/x11_window.c.i"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/eero/all/opengl/snake-game/glfw-3.3.6/src/x11_window.c > CMakeFiles/glfw.dir/x11_window.c.i

src/CMakeFiles/glfw.dir/x11_window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/x11_window.c.s"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/eero/all/opengl/snake-game/glfw-3.3.6/src/x11_window.c -o CMakeFiles/glfw.dir/x11_window.c.s

src/CMakeFiles/glfw.dir/x11_window.c.o.requires:

.PHONY : src/CMakeFiles/glfw.dir/x11_window.c.o.requires

src/CMakeFiles/glfw.dir/x11_window.c.o.provides: src/CMakeFiles/glfw.dir/x11_window.c.o.requires
	$(MAKE) -f src/CMakeFiles/glfw.dir/build.make src/CMakeFiles/glfw.dir/x11_window.c.o.provides.build
.PHONY : src/CMakeFiles/glfw.dir/x11_window.c.o.provides

src/CMakeFiles/glfw.dir/x11_window.c.o.provides.build: src/CMakeFiles/glfw.dir/x11_window.c.o


src/CMakeFiles/glfw.dir/xkb_unicode.c.o: src/CMakeFiles/glfw.dir/flags.make
src/CMakeFiles/glfw.dir/xkb_unicode.c.o: src/xkb_unicode.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eero/all/opengl/snake-game/glfw-3.3.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object src/CMakeFiles/glfw.dir/xkb_unicode.c.o"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/xkb_unicode.c.o   -c /home/eero/all/opengl/snake-game/glfw-3.3.6/src/xkb_unicode.c

src/CMakeFiles/glfw.dir/xkb_unicode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/xkb_unicode.c.i"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/eero/all/opengl/snake-game/glfw-3.3.6/src/xkb_unicode.c > CMakeFiles/glfw.dir/xkb_unicode.c.i

src/CMakeFiles/glfw.dir/xkb_unicode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/xkb_unicode.c.s"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/eero/all/opengl/snake-game/glfw-3.3.6/src/xkb_unicode.c -o CMakeFiles/glfw.dir/xkb_unicode.c.s

src/CMakeFiles/glfw.dir/xkb_unicode.c.o.requires:

.PHONY : src/CMakeFiles/glfw.dir/xkb_unicode.c.o.requires

src/CMakeFiles/glfw.dir/xkb_unicode.c.o.provides: src/CMakeFiles/glfw.dir/xkb_unicode.c.o.requires
	$(MAKE) -f src/CMakeFiles/glfw.dir/build.make src/CMakeFiles/glfw.dir/xkb_unicode.c.o.provides.build
.PHONY : src/CMakeFiles/glfw.dir/xkb_unicode.c.o.provides

src/CMakeFiles/glfw.dir/xkb_unicode.c.o.provides.build: src/CMakeFiles/glfw.dir/xkb_unicode.c.o


src/CMakeFiles/glfw.dir/posix_time.c.o: src/CMakeFiles/glfw.dir/flags.make
src/CMakeFiles/glfw.dir/posix_time.c.o: src/posix_time.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eero/all/opengl/snake-game/glfw-3.3.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object src/CMakeFiles/glfw.dir/posix_time.c.o"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/posix_time.c.o   -c /home/eero/all/opengl/snake-game/glfw-3.3.6/src/posix_time.c

src/CMakeFiles/glfw.dir/posix_time.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/posix_time.c.i"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/eero/all/opengl/snake-game/glfw-3.3.6/src/posix_time.c > CMakeFiles/glfw.dir/posix_time.c.i

src/CMakeFiles/glfw.dir/posix_time.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/posix_time.c.s"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/eero/all/opengl/snake-game/glfw-3.3.6/src/posix_time.c -o CMakeFiles/glfw.dir/posix_time.c.s

src/CMakeFiles/glfw.dir/posix_time.c.o.requires:

.PHONY : src/CMakeFiles/glfw.dir/posix_time.c.o.requires

src/CMakeFiles/glfw.dir/posix_time.c.o.provides: src/CMakeFiles/glfw.dir/posix_time.c.o.requires
	$(MAKE) -f src/CMakeFiles/glfw.dir/build.make src/CMakeFiles/glfw.dir/posix_time.c.o.provides.build
.PHONY : src/CMakeFiles/glfw.dir/posix_time.c.o.provides

src/CMakeFiles/glfw.dir/posix_time.c.o.provides.build: src/CMakeFiles/glfw.dir/posix_time.c.o


src/CMakeFiles/glfw.dir/posix_thread.c.o: src/CMakeFiles/glfw.dir/flags.make
src/CMakeFiles/glfw.dir/posix_thread.c.o: src/posix_thread.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eero/all/opengl/snake-game/glfw-3.3.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object src/CMakeFiles/glfw.dir/posix_thread.c.o"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/posix_thread.c.o   -c /home/eero/all/opengl/snake-game/glfw-3.3.6/src/posix_thread.c

src/CMakeFiles/glfw.dir/posix_thread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/posix_thread.c.i"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/eero/all/opengl/snake-game/glfw-3.3.6/src/posix_thread.c > CMakeFiles/glfw.dir/posix_thread.c.i

src/CMakeFiles/glfw.dir/posix_thread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/posix_thread.c.s"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/eero/all/opengl/snake-game/glfw-3.3.6/src/posix_thread.c -o CMakeFiles/glfw.dir/posix_thread.c.s

src/CMakeFiles/glfw.dir/posix_thread.c.o.requires:

.PHONY : src/CMakeFiles/glfw.dir/posix_thread.c.o.requires

src/CMakeFiles/glfw.dir/posix_thread.c.o.provides: src/CMakeFiles/glfw.dir/posix_thread.c.o.requires
	$(MAKE) -f src/CMakeFiles/glfw.dir/build.make src/CMakeFiles/glfw.dir/posix_thread.c.o.provides.build
.PHONY : src/CMakeFiles/glfw.dir/posix_thread.c.o.provides

src/CMakeFiles/glfw.dir/posix_thread.c.o.provides.build: src/CMakeFiles/glfw.dir/posix_thread.c.o


src/CMakeFiles/glfw.dir/glx_context.c.o: src/CMakeFiles/glfw.dir/flags.make
src/CMakeFiles/glfw.dir/glx_context.c.o: src/glx_context.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eero/all/opengl/snake-game/glfw-3.3.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object src/CMakeFiles/glfw.dir/glx_context.c.o"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/glx_context.c.o   -c /home/eero/all/opengl/snake-game/glfw-3.3.6/src/glx_context.c

src/CMakeFiles/glfw.dir/glx_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/glx_context.c.i"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/eero/all/opengl/snake-game/glfw-3.3.6/src/glx_context.c > CMakeFiles/glfw.dir/glx_context.c.i

src/CMakeFiles/glfw.dir/glx_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/glx_context.c.s"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/eero/all/opengl/snake-game/glfw-3.3.6/src/glx_context.c -o CMakeFiles/glfw.dir/glx_context.c.s

src/CMakeFiles/glfw.dir/glx_context.c.o.requires:

.PHONY : src/CMakeFiles/glfw.dir/glx_context.c.o.requires

src/CMakeFiles/glfw.dir/glx_context.c.o.provides: src/CMakeFiles/glfw.dir/glx_context.c.o.requires
	$(MAKE) -f src/CMakeFiles/glfw.dir/build.make src/CMakeFiles/glfw.dir/glx_context.c.o.provides.build
.PHONY : src/CMakeFiles/glfw.dir/glx_context.c.o.provides

src/CMakeFiles/glfw.dir/glx_context.c.o.provides.build: src/CMakeFiles/glfw.dir/glx_context.c.o


src/CMakeFiles/glfw.dir/egl_context.c.o: src/CMakeFiles/glfw.dir/flags.make
src/CMakeFiles/glfw.dir/egl_context.c.o: src/egl_context.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eero/all/opengl/snake-game/glfw-3.3.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object src/CMakeFiles/glfw.dir/egl_context.c.o"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles/glfw.dir/egl_context.c.o   -c /home/eero/all/opengl/snake-game/glfw-3.3.6/src/egl_context.c

src/CMakeFiles/glfw.dir/egl_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/egl_context.c.i"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/eero/all/opengl/snake-game/glfw-3.3.6/src/egl_context.c > CMakeFiles/glfw.dir/egl_context.c.i

src/CMakeFiles/glfw.dir/egl_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/egl_context.c.s"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/eero/all/opengl/snake-game/glfw-3.3.6/src/egl_context.c -o CMakeFiles/glfw.dir/egl_context.c.s

src/CMakeFiles/glfw.dir/egl_context.c.o.requires:

.PHONY : src/CMakeFiles/glfw.dir/egl_context.c.o.requires

src/CMakeFiles/glfw.dir/egl_context.c.o.provides: src/CMakeFiles/glfw.dir/egl_context.c.o.requires
	$(MAKE) -f src/CMakeFiles/glfw.dir/build.make src/CMakeFiles/glfw.dir/egl_context.c.o.provides.build
.PHONY : src/CMakeFiles/glfw.dir/egl_context.c.o.provides

src/CMakeFiles/glfw.dir/egl_context.c.o.provides.build: src/CMakeFiles/glfw.dir/egl_context.c.o


src/CMakeFiles/glfw.dir/osmesa_context.c.o: src/CMakeFiles/glfw.dir/flags.make
src/CMakeFiles/glfw.dir/osmesa_context.c.o: src/osmesa_context.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eero/all/opengl/snake-game/glfw-3.3.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object src/CMakeFiles/glfw.dir/osmesa_context.c.o"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles/glfw.dir/osmesa_context.c.o   -c /home/eero/all/opengl/snake-game/glfw-3.3.6/src/osmesa_context.c

src/CMakeFiles/glfw.dir/osmesa_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/osmesa_context.c.i"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/eero/all/opengl/snake-game/glfw-3.3.6/src/osmesa_context.c > CMakeFiles/glfw.dir/osmesa_context.c.i

src/CMakeFiles/glfw.dir/osmesa_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/osmesa_context.c.s"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/eero/all/opengl/snake-game/glfw-3.3.6/src/osmesa_context.c -o CMakeFiles/glfw.dir/osmesa_context.c.s

src/CMakeFiles/glfw.dir/osmesa_context.c.o.requires:

.PHONY : src/CMakeFiles/glfw.dir/osmesa_context.c.o.requires

src/CMakeFiles/glfw.dir/osmesa_context.c.o.provides: src/CMakeFiles/glfw.dir/osmesa_context.c.o.requires
	$(MAKE) -f src/CMakeFiles/glfw.dir/build.make src/CMakeFiles/glfw.dir/osmesa_context.c.o.provides.build
.PHONY : src/CMakeFiles/glfw.dir/osmesa_context.c.o.provides

src/CMakeFiles/glfw.dir/osmesa_context.c.o.provides.build: src/CMakeFiles/glfw.dir/osmesa_context.c.o


src/CMakeFiles/glfw.dir/linux_joystick.c.o: src/CMakeFiles/glfw.dir/flags.make
src/CMakeFiles/glfw.dir/linux_joystick.c.o: src/linux_joystick.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eero/all/opengl/snake-game/glfw-3.3.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object src/CMakeFiles/glfw.dir/linux_joystick.c.o"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/linux_joystick.c.o   -c /home/eero/all/opengl/snake-game/glfw-3.3.6/src/linux_joystick.c

src/CMakeFiles/glfw.dir/linux_joystick.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/linux_joystick.c.i"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/eero/all/opengl/snake-game/glfw-3.3.6/src/linux_joystick.c > CMakeFiles/glfw.dir/linux_joystick.c.i

src/CMakeFiles/glfw.dir/linux_joystick.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/linux_joystick.c.s"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/eero/all/opengl/snake-game/glfw-3.3.6/src/linux_joystick.c -o CMakeFiles/glfw.dir/linux_joystick.c.s

src/CMakeFiles/glfw.dir/linux_joystick.c.o.requires:

.PHONY : src/CMakeFiles/glfw.dir/linux_joystick.c.o.requires

src/CMakeFiles/glfw.dir/linux_joystick.c.o.provides: src/CMakeFiles/glfw.dir/linux_joystick.c.o.requires
	$(MAKE) -f src/CMakeFiles/glfw.dir/build.make src/CMakeFiles/glfw.dir/linux_joystick.c.o.provides.build
.PHONY : src/CMakeFiles/glfw.dir/linux_joystick.c.o.provides

src/CMakeFiles/glfw.dir/linux_joystick.c.o.provides.build: src/CMakeFiles/glfw.dir/linux_joystick.c.o


# Object files for target glfw
glfw_OBJECTS = \
"CMakeFiles/glfw.dir/context.c.o" \
"CMakeFiles/glfw.dir/init.c.o" \
"CMakeFiles/glfw.dir/input.c.o" \
"CMakeFiles/glfw.dir/monitor.c.o" \
"CMakeFiles/glfw.dir/vulkan.c.o" \
"CMakeFiles/glfw.dir/window.c.o" \
"CMakeFiles/glfw.dir/x11_init.c.o" \
"CMakeFiles/glfw.dir/x11_monitor.c.o" \
"CMakeFiles/glfw.dir/x11_window.c.o" \
"CMakeFiles/glfw.dir/xkb_unicode.c.o" \
"CMakeFiles/glfw.dir/posix_time.c.o" \
"CMakeFiles/glfw.dir/posix_thread.c.o" \
"CMakeFiles/glfw.dir/glx_context.c.o" \
"CMakeFiles/glfw.dir/egl_context.c.o" \
"CMakeFiles/glfw.dir/osmesa_context.c.o" \
"CMakeFiles/glfw.dir/linux_joystick.c.o"

# External object files for target glfw
glfw_EXTERNAL_OBJECTS =

src/libglfw3.a: src/CMakeFiles/glfw.dir/context.c.o
src/libglfw3.a: src/CMakeFiles/glfw.dir/init.c.o
src/libglfw3.a: src/CMakeFiles/glfw.dir/input.c.o
src/libglfw3.a: src/CMakeFiles/glfw.dir/monitor.c.o
src/libglfw3.a: src/CMakeFiles/glfw.dir/vulkan.c.o
src/libglfw3.a: src/CMakeFiles/glfw.dir/window.c.o
src/libglfw3.a: src/CMakeFiles/glfw.dir/x11_init.c.o
src/libglfw3.a: src/CMakeFiles/glfw.dir/x11_monitor.c.o
src/libglfw3.a: src/CMakeFiles/glfw.dir/x11_window.c.o
src/libglfw3.a: src/CMakeFiles/glfw.dir/xkb_unicode.c.o
src/libglfw3.a: src/CMakeFiles/glfw.dir/posix_time.c.o
src/libglfw3.a: src/CMakeFiles/glfw.dir/posix_thread.c.o
src/libglfw3.a: src/CMakeFiles/glfw.dir/glx_context.c.o
src/libglfw3.a: src/CMakeFiles/glfw.dir/egl_context.c.o
src/libglfw3.a: src/CMakeFiles/glfw.dir/osmesa_context.c.o
src/libglfw3.a: src/CMakeFiles/glfw.dir/linux_joystick.c.o
src/libglfw3.a: src/CMakeFiles/glfw.dir/build.make
src/libglfw3.a: src/CMakeFiles/glfw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/eero/all/opengl/snake-game/glfw-3.3.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Linking C static library libglfw3.a"
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && $(CMAKE_COMMAND) -P CMakeFiles/glfw.dir/cmake_clean_target.cmake
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glfw.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/glfw.dir/build: src/libglfw3.a

.PHONY : src/CMakeFiles/glfw.dir/build

src/CMakeFiles/glfw.dir/requires: src/CMakeFiles/glfw.dir/context.c.o.requires
src/CMakeFiles/glfw.dir/requires: src/CMakeFiles/glfw.dir/init.c.o.requires
src/CMakeFiles/glfw.dir/requires: src/CMakeFiles/glfw.dir/input.c.o.requires
src/CMakeFiles/glfw.dir/requires: src/CMakeFiles/glfw.dir/monitor.c.o.requires
src/CMakeFiles/glfw.dir/requires: src/CMakeFiles/glfw.dir/vulkan.c.o.requires
src/CMakeFiles/glfw.dir/requires: src/CMakeFiles/glfw.dir/window.c.o.requires
src/CMakeFiles/glfw.dir/requires: src/CMakeFiles/glfw.dir/x11_init.c.o.requires
src/CMakeFiles/glfw.dir/requires: src/CMakeFiles/glfw.dir/x11_monitor.c.o.requires
src/CMakeFiles/glfw.dir/requires: src/CMakeFiles/glfw.dir/x11_window.c.o.requires
src/CMakeFiles/glfw.dir/requires: src/CMakeFiles/glfw.dir/xkb_unicode.c.o.requires
src/CMakeFiles/glfw.dir/requires: src/CMakeFiles/glfw.dir/posix_time.c.o.requires
src/CMakeFiles/glfw.dir/requires: src/CMakeFiles/glfw.dir/posix_thread.c.o.requires
src/CMakeFiles/glfw.dir/requires: src/CMakeFiles/glfw.dir/glx_context.c.o.requires
src/CMakeFiles/glfw.dir/requires: src/CMakeFiles/glfw.dir/egl_context.c.o.requires
src/CMakeFiles/glfw.dir/requires: src/CMakeFiles/glfw.dir/osmesa_context.c.o.requires
src/CMakeFiles/glfw.dir/requires: src/CMakeFiles/glfw.dir/linux_joystick.c.o.requires

.PHONY : src/CMakeFiles/glfw.dir/requires

src/CMakeFiles/glfw.dir/clean:
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6/src && $(CMAKE_COMMAND) -P CMakeFiles/glfw.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/glfw.dir/clean

src/CMakeFiles/glfw.dir/depend:
	cd /home/eero/all/opengl/snake-game/glfw-3.3.6 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eero/all/opengl/snake-game/glfw-3.3.6 /home/eero/all/opengl/snake-game/glfw-3.3.6/src /home/eero/all/opengl/snake-game/glfw-3.3.6 /home/eero/all/opengl/snake-game/glfw-3.3.6/src /home/eero/all/opengl/snake-game/glfw-3.3.6/src/CMakeFiles/glfw.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/glfw.dir/depend

