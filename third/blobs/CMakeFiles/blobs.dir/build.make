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
include third/blobs/CMakeFiles/blobs.dir/depend.make

# Include the progress variables for this target.
include third/blobs/CMakeFiles/blobs.dir/progress.make

# Include the compile flags for this target's objects.
include third/blobs/CMakeFiles/blobs.dir/flags.make

third/blobs/CMakeFiles/blobs.dir/blob.cc.o: third/blobs/CMakeFiles/blobs.dir/flags.make
third/blobs/CMakeFiles/blobs.dir/blob.cc.o: third/blobs/blob.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/sudeep/Code/cv/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object third/blobs/CMakeFiles/blobs.dir/blob.cc.o"
	cd /Users/sudeep/Code/cv/third/blobs && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/blobs.dir/blob.cc.o -c /Users/sudeep/Code/cv/third/blobs/blob.cc

third/blobs/CMakeFiles/blobs.dir/blob.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/blobs.dir/blob.cc.i"
	cd /Users/sudeep/Code/cv/third/blobs && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/sudeep/Code/cv/third/blobs/blob.cc > CMakeFiles/blobs.dir/blob.cc.i

third/blobs/CMakeFiles/blobs.dir/blob.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/blobs.dir/blob.cc.s"
	cd /Users/sudeep/Code/cv/third/blobs && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/sudeep/Code/cv/third/blobs/blob.cc -o CMakeFiles/blobs.dir/blob.cc.s

third/blobs/CMakeFiles/blobs.dir/blob.cc.o.requires:
.PHONY : third/blobs/CMakeFiles/blobs.dir/blob.cc.o.requires

third/blobs/CMakeFiles/blobs.dir/blob.cc.o.provides: third/blobs/CMakeFiles/blobs.dir/blob.cc.o.requires
	$(MAKE) -f third/blobs/CMakeFiles/blobs.dir/build.make third/blobs/CMakeFiles/blobs.dir/blob.cc.o.provides.build
.PHONY : third/blobs/CMakeFiles/blobs.dir/blob.cc.o.provides

third/blobs/CMakeFiles/blobs.dir/blob.cc.o.provides.build: third/blobs/CMakeFiles/blobs.dir/blob.cc.o
.PHONY : third/blobs/CMakeFiles/blobs.dir/blob.cc.o.provides.build

third/blobs/CMakeFiles/blobs.dir/blob_contour.cc.o: third/blobs/CMakeFiles/blobs.dir/flags.make
third/blobs/CMakeFiles/blobs.dir/blob_contour.cc.o: third/blobs/blob_contour.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/sudeep/Code/cv/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object third/blobs/CMakeFiles/blobs.dir/blob_contour.cc.o"
	cd /Users/sudeep/Code/cv/third/blobs && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/blobs.dir/blob_contour.cc.o -c /Users/sudeep/Code/cv/third/blobs/blob_contour.cc

third/blobs/CMakeFiles/blobs.dir/blob_contour.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/blobs.dir/blob_contour.cc.i"
	cd /Users/sudeep/Code/cv/third/blobs && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/sudeep/Code/cv/third/blobs/blob_contour.cc > CMakeFiles/blobs.dir/blob_contour.cc.i

third/blobs/CMakeFiles/blobs.dir/blob_contour.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/blobs.dir/blob_contour.cc.s"
	cd /Users/sudeep/Code/cv/third/blobs && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/sudeep/Code/cv/third/blobs/blob_contour.cc -o CMakeFiles/blobs.dir/blob_contour.cc.s

third/blobs/CMakeFiles/blobs.dir/blob_contour.cc.o.requires:
.PHONY : third/blobs/CMakeFiles/blobs.dir/blob_contour.cc.o.requires

third/blobs/CMakeFiles/blobs.dir/blob_contour.cc.o.provides: third/blobs/CMakeFiles/blobs.dir/blob_contour.cc.o.requires
	$(MAKE) -f third/blobs/CMakeFiles/blobs.dir/build.make third/blobs/CMakeFiles/blobs.dir/blob_contour.cc.o.provides.build
.PHONY : third/blobs/CMakeFiles/blobs.dir/blob_contour.cc.o.provides

third/blobs/CMakeFiles/blobs.dir/blob_contour.cc.o.provides.build: third/blobs/CMakeFiles/blobs.dir/blob_contour.cc.o
.PHONY : third/blobs/CMakeFiles/blobs.dir/blob_contour.cc.o.provides.build

third/blobs/CMakeFiles/blobs.dir/blob_operators.cc.o: third/blobs/CMakeFiles/blobs.dir/flags.make
third/blobs/CMakeFiles/blobs.dir/blob_operators.cc.o: third/blobs/blob_operators.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/sudeep/Code/cv/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object third/blobs/CMakeFiles/blobs.dir/blob_operators.cc.o"
	cd /Users/sudeep/Code/cv/third/blobs && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/blobs.dir/blob_operators.cc.o -c /Users/sudeep/Code/cv/third/blobs/blob_operators.cc

third/blobs/CMakeFiles/blobs.dir/blob_operators.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/blobs.dir/blob_operators.cc.i"
	cd /Users/sudeep/Code/cv/third/blobs && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/sudeep/Code/cv/third/blobs/blob_operators.cc > CMakeFiles/blobs.dir/blob_operators.cc.i

third/blobs/CMakeFiles/blobs.dir/blob_operators.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/blobs.dir/blob_operators.cc.s"
	cd /Users/sudeep/Code/cv/third/blobs && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/sudeep/Code/cv/third/blobs/blob_operators.cc -o CMakeFiles/blobs.dir/blob_operators.cc.s

third/blobs/CMakeFiles/blobs.dir/blob_operators.cc.o.requires:
.PHONY : third/blobs/CMakeFiles/blobs.dir/blob_operators.cc.o.requires

third/blobs/CMakeFiles/blobs.dir/blob_operators.cc.o.provides: third/blobs/CMakeFiles/blobs.dir/blob_operators.cc.o.requires
	$(MAKE) -f third/blobs/CMakeFiles/blobs.dir/build.make third/blobs/CMakeFiles/blobs.dir/blob_operators.cc.o.provides.build
.PHONY : third/blobs/CMakeFiles/blobs.dir/blob_operators.cc.o.provides

third/blobs/CMakeFiles/blobs.dir/blob_operators.cc.o.provides.build: third/blobs/CMakeFiles/blobs.dir/blob_operators.cc.o
.PHONY : third/blobs/CMakeFiles/blobs.dir/blob_operators.cc.o.provides.build

third/blobs/CMakeFiles/blobs.dir/blob_result.cc.o: third/blobs/CMakeFiles/blobs.dir/flags.make
third/blobs/CMakeFiles/blobs.dir/blob_result.cc.o: third/blobs/blob_result.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/sudeep/Code/cv/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object third/blobs/CMakeFiles/blobs.dir/blob_result.cc.o"
	cd /Users/sudeep/Code/cv/third/blobs && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/blobs.dir/blob_result.cc.o -c /Users/sudeep/Code/cv/third/blobs/blob_result.cc

third/blobs/CMakeFiles/blobs.dir/blob_result.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/blobs.dir/blob_result.cc.i"
	cd /Users/sudeep/Code/cv/third/blobs && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/sudeep/Code/cv/third/blobs/blob_result.cc > CMakeFiles/blobs.dir/blob_result.cc.i

third/blobs/CMakeFiles/blobs.dir/blob_result.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/blobs.dir/blob_result.cc.s"
	cd /Users/sudeep/Code/cv/third/blobs && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/sudeep/Code/cv/third/blobs/blob_result.cc -o CMakeFiles/blobs.dir/blob_result.cc.s

third/blobs/CMakeFiles/blobs.dir/blob_result.cc.o.requires:
.PHONY : third/blobs/CMakeFiles/blobs.dir/blob_result.cc.o.requires

third/blobs/CMakeFiles/blobs.dir/blob_result.cc.o.provides: third/blobs/CMakeFiles/blobs.dir/blob_result.cc.o.requires
	$(MAKE) -f third/blobs/CMakeFiles/blobs.dir/build.make third/blobs/CMakeFiles/blobs.dir/blob_result.cc.o.provides.build
.PHONY : third/blobs/CMakeFiles/blobs.dir/blob_result.cc.o.provides

third/blobs/CMakeFiles/blobs.dir/blob_result.cc.o.provides.build: third/blobs/CMakeFiles/blobs.dir/blob_result.cc.o
.PHONY : third/blobs/CMakeFiles/blobs.dir/blob_result.cc.o.provides.build

third/blobs/CMakeFiles/blobs.dir/component_labeling.cc.o: third/blobs/CMakeFiles/blobs.dir/flags.make
third/blobs/CMakeFiles/blobs.dir/component_labeling.cc.o: third/blobs/component_labeling.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/sudeep/Code/cv/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object third/blobs/CMakeFiles/blobs.dir/component_labeling.cc.o"
	cd /Users/sudeep/Code/cv/third/blobs && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/blobs.dir/component_labeling.cc.o -c /Users/sudeep/Code/cv/third/blobs/component_labeling.cc

third/blobs/CMakeFiles/blobs.dir/component_labeling.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/blobs.dir/component_labeling.cc.i"
	cd /Users/sudeep/Code/cv/third/blobs && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/sudeep/Code/cv/third/blobs/component_labeling.cc > CMakeFiles/blobs.dir/component_labeling.cc.i

third/blobs/CMakeFiles/blobs.dir/component_labeling.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/blobs.dir/component_labeling.cc.s"
	cd /Users/sudeep/Code/cv/third/blobs && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/sudeep/Code/cv/third/blobs/component_labeling.cc -o CMakeFiles/blobs.dir/component_labeling.cc.s

third/blobs/CMakeFiles/blobs.dir/component_labeling.cc.o.requires:
.PHONY : third/blobs/CMakeFiles/blobs.dir/component_labeling.cc.o.requires

third/blobs/CMakeFiles/blobs.dir/component_labeling.cc.o.provides: third/blobs/CMakeFiles/blobs.dir/component_labeling.cc.o.requires
	$(MAKE) -f third/blobs/CMakeFiles/blobs.dir/build.make third/blobs/CMakeFiles/blobs.dir/component_labeling.cc.o.provides.build
.PHONY : third/blobs/CMakeFiles/blobs.dir/component_labeling.cc.o.provides

third/blobs/CMakeFiles/blobs.dir/component_labeling.cc.o.provides.build: third/blobs/CMakeFiles/blobs.dir/component_labeling.cc.o
.PHONY : third/blobs/CMakeFiles/blobs.dir/component_labeling.cc.o.provides.build

# Object files for target blobs
blobs_OBJECTS = \
"CMakeFiles/blobs.dir/blob.cc.o" \
"CMakeFiles/blobs.dir/blob_contour.cc.o" \
"CMakeFiles/blobs.dir/blob_operators.cc.o" \
"CMakeFiles/blobs.dir/blob_result.cc.o" \
"CMakeFiles/blobs.dir/component_labeling.cc.o"

# External object files for target blobs
blobs_EXTERNAL_OBJECTS =

third/blobs/blobs.mod: third/blobs/CMakeFiles/blobs.dir/blob.cc.o
third/blobs/blobs.mod: third/blobs/CMakeFiles/blobs.dir/blob_contour.cc.o
third/blobs/blobs.mod: third/blobs/CMakeFiles/blobs.dir/blob_operators.cc.o
third/blobs/blobs.mod: third/blobs/CMakeFiles/blobs.dir/blob_result.cc.o
third/blobs/blobs.mod: third/blobs/CMakeFiles/blobs.dir/component_labeling.cc.o
third/blobs/blobs.mod: third/blobs/CMakeFiles/blobs.dir/build.make
third/blobs/blobs.mod: third/blobs/CMakeFiles/blobs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library blobs.mod"
	cd /Users/sudeep/Code/cv/third/blobs && $(CMAKE_COMMAND) -P CMakeFiles/blobs.dir/cmake_clean_target.cmake
	cd /Users/sudeep/Code/cv/third/blobs && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/blobs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
third/blobs/CMakeFiles/blobs.dir/build: third/blobs/blobs.mod
.PHONY : third/blobs/CMakeFiles/blobs.dir/build

third/blobs/CMakeFiles/blobs.dir/requires: third/blobs/CMakeFiles/blobs.dir/blob.cc.o.requires
third/blobs/CMakeFiles/blobs.dir/requires: third/blobs/CMakeFiles/blobs.dir/blob_contour.cc.o.requires
third/blobs/CMakeFiles/blobs.dir/requires: third/blobs/CMakeFiles/blobs.dir/blob_operators.cc.o.requires
third/blobs/CMakeFiles/blobs.dir/requires: third/blobs/CMakeFiles/blobs.dir/blob_result.cc.o.requires
third/blobs/CMakeFiles/blobs.dir/requires: third/blobs/CMakeFiles/blobs.dir/component_labeling.cc.o.requires
.PHONY : third/blobs/CMakeFiles/blobs.dir/requires

third/blobs/CMakeFiles/blobs.dir/clean:
	cd /Users/sudeep/Code/cv/third/blobs && $(CMAKE_COMMAND) -P CMakeFiles/blobs.dir/cmake_clean.cmake
.PHONY : third/blobs/CMakeFiles/blobs.dir/clean

third/blobs/CMakeFiles/blobs.dir/depend:
	cd /Users/sudeep/Code/cv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/sudeep/Code/cv /Users/sudeep/Code/cv/third/blobs /Users/sudeep/Code/cv /Users/sudeep/Code/cv/third/blobs /Users/sudeep/Code/cv/third/blobs/CMakeFiles/blobs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third/blobs/CMakeFiles/blobs.dir/depend

