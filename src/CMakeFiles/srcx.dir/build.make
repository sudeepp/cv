# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.6

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E remove -f

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /opt/local/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/sudeep/Code/cv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/sudeep/Code/cv

# Include any dependencies generated for this target.
include src/CMakeFiles/srcx.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/srcx.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/srcx.dir/flags.make

src/CMakeFiles/srcx.dir/vkeybd.cc.o: src/CMakeFiles/srcx.dir/flags.make
src/CMakeFiles/srcx.dir/vkeybd.cc.o: src/vkeybd.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/sudeep/Code/cv/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/srcx.dir/vkeybd.cc.o"
	cd /Users/sudeep/Code/cv/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/srcx.dir/vkeybd.cc.o -c /Users/sudeep/Code/cv/src/vkeybd.cc

src/CMakeFiles/srcx.dir/vkeybd.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/srcx.dir/vkeybd.cc.i"
	cd /Users/sudeep/Code/cv/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/sudeep/Code/cv/src/vkeybd.cc > CMakeFiles/srcx.dir/vkeybd.cc.i

src/CMakeFiles/srcx.dir/vkeybd.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/srcx.dir/vkeybd.cc.s"
	cd /Users/sudeep/Code/cv/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/sudeep/Code/cv/src/vkeybd.cc -o CMakeFiles/srcx.dir/vkeybd.cc.s

src/CMakeFiles/srcx.dir/vkeybd.cc.o.requires:
.PHONY : src/CMakeFiles/srcx.dir/vkeybd.cc.o.requires

src/CMakeFiles/srcx.dir/vkeybd.cc.o.provides: src/CMakeFiles/srcx.dir/vkeybd.cc.o.requires
	$(MAKE) -f src/CMakeFiles/srcx.dir/build.make src/CMakeFiles/srcx.dir/vkeybd.cc.o.provides.build
.PHONY : src/CMakeFiles/srcx.dir/vkeybd.cc.o.provides

src/CMakeFiles/srcx.dir/vkeybd.cc.o.provides.build: src/CMakeFiles/srcx.dir/vkeybd.cc.o
.PHONY : src/CMakeFiles/srcx.dir/vkeybd.cc.o.provides.build

src/CMakeFiles/srcx.dir/webcam.cc.o: src/CMakeFiles/srcx.dir/flags.make
src/CMakeFiles/srcx.dir/webcam.cc.o: src/webcam.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/sudeep/Code/cv/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/srcx.dir/webcam.cc.o"
	cd /Users/sudeep/Code/cv/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/srcx.dir/webcam.cc.o -c /Users/sudeep/Code/cv/src/webcam.cc

src/CMakeFiles/srcx.dir/webcam.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/srcx.dir/webcam.cc.i"
	cd /Users/sudeep/Code/cv/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/sudeep/Code/cv/src/webcam.cc > CMakeFiles/srcx.dir/webcam.cc.i

src/CMakeFiles/srcx.dir/webcam.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/srcx.dir/webcam.cc.s"
	cd /Users/sudeep/Code/cv/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/sudeep/Code/cv/src/webcam.cc -o CMakeFiles/srcx.dir/webcam.cc.s

src/CMakeFiles/srcx.dir/webcam.cc.o.requires:
.PHONY : src/CMakeFiles/srcx.dir/webcam.cc.o.requires

src/CMakeFiles/srcx.dir/webcam.cc.o.provides: src/CMakeFiles/srcx.dir/webcam.cc.o.requires
	$(MAKE) -f src/CMakeFiles/srcx.dir/build.make src/CMakeFiles/srcx.dir/webcam.cc.o.provides.build
.PHONY : src/CMakeFiles/srcx.dir/webcam.cc.o.provides

src/CMakeFiles/srcx.dir/webcam.cc.o.provides.build: src/CMakeFiles/srcx.dir/webcam.cc.o
.PHONY : src/CMakeFiles/srcx.dir/webcam.cc.o.provides.build

# Object files for target srcx
srcx_OBJECTS = \
"CMakeFiles/srcx.dir/vkeybd.cc.o" \
"CMakeFiles/srcx.dir/webcam.cc.o"

# External object files for target srcx
srcx_EXTERNAL_OBJECTS =

src/srcx: src/CMakeFiles/srcx.dir/vkeybd.cc.o
src/srcx: src/CMakeFiles/srcx.dir/webcam.cc.o
src/srcx: src/CMakeFiles/srcx.dir/build.make
src/srcx: src/CMakeFiles/srcx.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable srcx"
	cd /Users/sudeep/Code/cv/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/srcx.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/srcx.dir/build: src/srcx
.PHONY : src/CMakeFiles/srcx.dir/build

src/CMakeFiles/srcx.dir/requires: src/CMakeFiles/srcx.dir/vkeybd.cc.o.requires
src/CMakeFiles/srcx.dir/requires: src/CMakeFiles/srcx.dir/webcam.cc.o.requires
.PHONY : src/CMakeFiles/srcx.dir/requires

src/CMakeFiles/srcx.dir/clean:
	cd /Users/sudeep/Code/cv/src && $(CMAKE_COMMAND) -P CMakeFiles/srcx.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/srcx.dir/clean

src/CMakeFiles/srcx.dir/depend:
	cd /Users/sudeep/Code/cv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/sudeep/Code/cv /Users/sudeep/Code/cv/src /Users/sudeep/Code/cv /Users/sudeep/Code/cv/src /Users/sudeep/Code/cv/src/CMakeFiles/srcx.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/srcx.dir/depend

