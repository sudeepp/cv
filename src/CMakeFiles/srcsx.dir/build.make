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
include src/CMakeFiles/srcsx.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/srcsx.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/srcsx.dir/flags.make

src/CMakeFiles/srcsx.dir/vkeybd.cc.o: src/CMakeFiles/srcsx.dir/flags.make
src/CMakeFiles/srcsx.dir/vkeybd.cc.o: src/vkeybd.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/sudeep/Code/cv/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/srcsx.dir/vkeybd.cc.o"
	cd /Users/sudeep/Code/cv/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/srcsx.dir/vkeybd.cc.o -c /Users/sudeep/Code/cv/src/vkeybd.cc

src/CMakeFiles/srcsx.dir/vkeybd.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/srcsx.dir/vkeybd.cc.i"
	cd /Users/sudeep/Code/cv/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/sudeep/Code/cv/src/vkeybd.cc > CMakeFiles/srcsx.dir/vkeybd.cc.i

src/CMakeFiles/srcsx.dir/vkeybd.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/srcsx.dir/vkeybd.cc.s"
	cd /Users/sudeep/Code/cv/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/sudeep/Code/cv/src/vkeybd.cc -o CMakeFiles/srcsx.dir/vkeybd.cc.s

src/CMakeFiles/srcsx.dir/vkeybd.cc.o.requires:
.PHONY : src/CMakeFiles/srcsx.dir/vkeybd.cc.o.requires

src/CMakeFiles/srcsx.dir/vkeybd.cc.o.provides: src/CMakeFiles/srcsx.dir/vkeybd.cc.o.requires
	$(MAKE) -f src/CMakeFiles/srcsx.dir/build.make src/CMakeFiles/srcsx.dir/vkeybd.cc.o.provides.build
.PHONY : src/CMakeFiles/srcsx.dir/vkeybd.cc.o.provides

src/CMakeFiles/srcsx.dir/vkeybd.cc.o.provides.build: src/CMakeFiles/srcsx.dir/vkeybd.cc.o
.PHONY : src/CMakeFiles/srcsx.dir/vkeybd.cc.o.provides.build

# Object files for target srcsx
srcsx_OBJECTS = \
"CMakeFiles/srcsx.dir/vkeybd.cc.o"

# External object files for target srcsx
srcsx_EXTERNAL_OBJECTS =

src/srcsx: src/CMakeFiles/srcsx.dir/vkeybd.cc.o
src/srcsx: src/libsrcs.dylib
src/srcsx: src/CMakeFiles/srcsx.dir/build.make
src/srcsx: src/CMakeFiles/srcsx.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable srcsx"
	cd /Users/sudeep/Code/cv/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/srcsx.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/srcsx.dir/build: src/srcsx
.PHONY : src/CMakeFiles/srcsx.dir/build

src/CMakeFiles/srcsx.dir/requires: src/CMakeFiles/srcsx.dir/vkeybd.cc.o.requires
.PHONY : src/CMakeFiles/srcsx.dir/requires

src/CMakeFiles/srcsx.dir/clean:
	cd /Users/sudeep/Code/cv/src && $(CMAKE_COMMAND) -P CMakeFiles/srcsx.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/srcsx.dir/clean

src/CMakeFiles/srcsx.dir/depend:
	cd /Users/sudeep/Code/cv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/sudeep/Code/cv /Users/sudeep/Code/cv/src /Users/sudeep/Code/cv /Users/sudeep/Code/cv/src /Users/sudeep/Code/cv/src/CMakeFiles/srcsx.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/srcsx.dir/depend

