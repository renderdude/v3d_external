# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/liyun/V3D/2010_hackathon/li_yun/ITK-V3D-Plugins

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/liyun/V3D/2010_hackathon/li_yun/ITK-Plugin-Build

# Include any dependencies generated for this target.
include Source/Thresholding/CMakeFiles/DoubleThreshold.dir/depend.make

# Include the progress variables for this target.
include Source/Thresholding/CMakeFiles/DoubleThreshold.dir/progress.make

# Include the compile flags for this target's objects.
include Source/Thresholding/CMakeFiles/DoubleThreshold.dir/flags.make

Source/Thresholding/CMakeFiles/DoubleThreshold.dir/DoubleThreshold.o: Source/Thresholding/CMakeFiles/DoubleThreshold.dir/flags.make
Source/Thresholding/CMakeFiles/DoubleThreshold.dir/DoubleThreshold.o: /home/liyun/V3D/2010_hackathon/li_yun/ITK-V3D-Plugins/Source/Thresholding/DoubleThreshold.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/liyun/V3D/2010_hackathon/li_yun/ITK-Plugin-Build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Source/Thresholding/CMakeFiles/DoubleThreshold.dir/DoubleThreshold.o"
	cd /home/liyun/V3D/2010_hackathon/li_yun/ITK-Plugin-Build/Source/Thresholding && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/DoubleThreshold.dir/DoubleThreshold.o -c /home/liyun/V3D/2010_hackathon/li_yun/ITK-V3D-Plugins/Source/Thresholding/DoubleThreshold.cxx

Source/Thresholding/CMakeFiles/DoubleThreshold.dir/DoubleThreshold.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DoubleThreshold.dir/DoubleThreshold.i"
	cd /home/liyun/V3D/2010_hackathon/li_yun/ITK-Plugin-Build/Source/Thresholding && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/liyun/V3D/2010_hackathon/li_yun/ITK-V3D-Plugins/Source/Thresholding/DoubleThreshold.cxx > CMakeFiles/DoubleThreshold.dir/DoubleThreshold.i

Source/Thresholding/CMakeFiles/DoubleThreshold.dir/DoubleThreshold.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DoubleThreshold.dir/DoubleThreshold.s"
	cd /home/liyun/V3D/2010_hackathon/li_yun/ITK-Plugin-Build/Source/Thresholding && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/liyun/V3D/2010_hackathon/li_yun/ITK-V3D-Plugins/Source/Thresholding/DoubleThreshold.cxx -o CMakeFiles/DoubleThreshold.dir/DoubleThreshold.s

Source/Thresholding/CMakeFiles/DoubleThreshold.dir/DoubleThreshold.o.requires:
.PHONY : Source/Thresholding/CMakeFiles/DoubleThreshold.dir/DoubleThreshold.o.requires

Source/Thresholding/CMakeFiles/DoubleThreshold.dir/DoubleThreshold.o.provides: Source/Thresholding/CMakeFiles/DoubleThreshold.dir/DoubleThreshold.o.requires
	$(MAKE) -f Source/Thresholding/CMakeFiles/DoubleThreshold.dir/build.make Source/Thresholding/CMakeFiles/DoubleThreshold.dir/DoubleThreshold.o.provides.build
.PHONY : Source/Thresholding/CMakeFiles/DoubleThreshold.dir/DoubleThreshold.o.provides

Source/Thresholding/CMakeFiles/DoubleThreshold.dir/DoubleThreshold.o.provides.build: Source/Thresholding/CMakeFiles/DoubleThreshold.dir/DoubleThreshold.o
.PHONY : Source/Thresholding/CMakeFiles/DoubleThreshold.dir/DoubleThreshold.o.provides.build

Source/Thresholding/CMakeFiles/DoubleThreshold.dir/moc_DoubleThreshold.o: Source/Thresholding/CMakeFiles/DoubleThreshold.dir/flags.make
Source/Thresholding/CMakeFiles/DoubleThreshold.dir/moc_DoubleThreshold.o: Source/Thresholding/moc_DoubleThreshold.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/liyun/V3D/2010_hackathon/li_yun/ITK-Plugin-Build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Source/Thresholding/CMakeFiles/DoubleThreshold.dir/moc_DoubleThreshold.o"
	cd /home/liyun/V3D/2010_hackathon/li_yun/ITK-Plugin-Build/Source/Thresholding && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/DoubleThreshold.dir/moc_DoubleThreshold.o -c /home/liyun/V3D/2010_hackathon/li_yun/ITK-Plugin-Build/Source/Thresholding/moc_DoubleThreshold.cxx

Source/Thresholding/CMakeFiles/DoubleThreshold.dir/moc_DoubleThreshold.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DoubleThreshold.dir/moc_DoubleThreshold.i"
	cd /home/liyun/V3D/2010_hackathon/li_yun/ITK-Plugin-Build/Source/Thresholding && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/liyun/V3D/2010_hackathon/li_yun/ITK-Plugin-Build/Source/Thresholding/moc_DoubleThreshold.cxx > CMakeFiles/DoubleThreshold.dir/moc_DoubleThreshold.i

Source/Thresholding/CMakeFiles/DoubleThreshold.dir/moc_DoubleThreshold.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DoubleThreshold.dir/moc_DoubleThreshold.s"
	cd /home/liyun/V3D/2010_hackathon/li_yun/ITK-Plugin-Build/Source/Thresholding && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/liyun/V3D/2010_hackathon/li_yun/ITK-Plugin-Build/Source/Thresholding/moc_DoubleThreshold.cxx -o CMakeFiles/DoubleThreshold.dir/moc_DoubleThreshold.s

Source/Thresholding/CMakeFiles/DoubleThreshold.dir/moc_DoubleThreshold.o.requires:
.PHONY : Source/Thresholding/CMakeFiles/DoubleThreshold.dir/moc_DoubleThreshold.o.requires

Source/Thresholding/CMakeFiles/DoubleThreshold.dir/moc_DoubleThreshold.o.provides: Source/Thresholding/CMakeFiles/DoubleThreshold.dir/moc_DoubleThreshold.o.requires
	$(MAKE) -f Source/Thresholding/CMakeFiles/DoubleThreshold.dir/build.make Source/Thresholding/CMakeFiles/DoubleThreshold.dir/moc_DoubleThreshold.o.provides.build
.PHONY : Source/Thresholding/CMakeFiles/DoubleThreshold.dir/moc_DoubleThreshold.o.provides

Source/Thresholding/CMakeFiles/DoubleThreshold.dir/moc_DoubleThreshold.o.provides.build: Source/Thresholding/CMakeFiles/DoubleThreshold.dir/moc_DoubleThreshold.o
.PHONY : Source/Thresholding/CMakeFiles/DoubleThreshold.dir/moc_DoubleThreshold.o.provides.build

Source/Thresholding/moc_DoubleThreshold.cxx: /home/liyun/V3D/2010_hackathon/li_yun/ITK-V3D-Plugins/Source/Thresholding/DoubleThreshold.h
	$(CMAKE_COMMAND) -E cmake_progress_report /home/liyun/V3D/2010_hackathon/li_yun/ITK-Plugin-Build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating moc_DoubleThreshold.cxx"
	cd /home/liyun/V3D/2010_hackathon/li_yun/ITK-Plugin-Build/Source/Thresholding && /usr/bin/moc-qt4 -I/home/liyun/V3D/v3d_main/basic_c_fun/../common_lib/include -I/home/liyun/ITK/InsightToolkit-3.20.0/Code/Review/Statistics -I/home/liyun/ITK/InsightToolkit-3.20.0/Code/Review -I/home/liyun/ITK/InsightToolkit-3.20.0/Utilities/gdcm/src -I/home/liyun/ITK/ITK-bin/Utilities/gdcm -I/home/liyun/ITK/ITK-bin/Utilities/vxl/core -I/home/liyun/ITK/ITK-bin/Utilities/vxl/vcl -I/home/liyun/ITK/ITK-bin/Utilities/vxl/v3p/netlib -I/home/liyun/ITK/InsightToolkit-3.20.0/Utilities/vxl/core -I/home/liyun/ITK/InsightToolkit-3.20.0/Utilities/vxl/vcl -I/home/liyun/ITK/InsightToolkit-3.20.0/Utilities/vxl/v3p/netlib -I/home/liyun/ITK/InsightToolkit-3.20.0/Utilities -I/home/liyun/ITK/ITK-bin/Utilities -I/home/liyun/ITK/InsightToolkit-3.20.0/Utilities/itkExtHdrs -I/home/liyun/ITK/InsightToolkit-3.20.0/Utilities/nifti/znzlib -I/home/liyun/ITK/InsightToolkit-3.20.0/Utilities/nifti/niftilib -I/home/liyun/ITK/InsightToolkit-3.20.0/Utilities/expat -I/home/liyun/ITK/ITK-bin/Utilities/expat -I/home/liyun/ITK/ITK-bin/Utilities/DICOMParser -I/home/liyun/ITK/InsightToolkit-3.20.0/Utilities/DICOMParser -I/home/liyun/ITK/ITK-bin/Utilities/NrrdIO -I/home/liyun/ITK/InsightToolkit-3.20.0/Utilities/NrrdIO -I/home/liyun/ITK/InsightToolkit-3.20.0/Utilities/MetaIO -I/home/liyun/ITK/InsightToolkit-3.20.0/Code/SpatialObject -I/home/liyun/ITK/InsightToolkit-3.20.0/Code/Numerics/NeuralNetworks -I/home/liyun/ITK/InsightToolkit-3.20.0/Code/Numerics/FEM -I/home/liyun/ITK/InsightToolkit-3.20.0/Code/IO -I/home/liyun/ITK/InsightToolkit-3.20.0/Code/Numerics -I/home/liyun/ITK/InsightToolkit-3.20.0/Code/Common -I/home/liyun/ITK/InsightToolkit-3.20.0/Code/BasicFilters -I/home/liyun/ITK/InsightToolkit-3.20.0/Code/Algorithms -I/home/liyun/ITK/ITK-bin -I/usr/include/qt4 -I/usr/include/qt4/QtGui -I/usr/include/qt4/QtCore -I/home/liyun/V3D/2010_hackathon/li_yun/ITK-V3D-Plugins/Source/Common -I/home/liyun/V3D/v3d_main/basic_c_fun -I/home/liyun/V3D/2010_hackathon/li_yun/ITK-V3D-Plugins -DQT_GUI_LIB -DQT_CORE_LIB -o /home/liyun/V3D/2010_hackathon/li_yun/ITK-Plugin-Build/Source/Thresholding/moc_DoubleThreshold.cxx /home/liyun/V3D/2010_hackathon/li_yun/ITK-V3D-Plugins/Source/Thresholding/DoubleThreshold.h

# Object files for target DoubleThreshold
DoubleThreshold_OBJECTS = \
"CMakeFiles/DoubleThreshold.dir/DoubleThreshold.o" \
"CMakeFiles/DoubleThreshold.dir/moc_DoubleThreshold.o"

# External object files for target DoubleThreshold
DoubleThreshold_EXTERNAL_OBJECTS =

bin/libDoubleThreshold.so: Source/Thresholding/CMakeFiles/DoubleThreshold.dir/DoubleThreshold.o
bin/libDoubleThreshold.so: Source/Thresholding/CMakeFiles/DoubleThreshold.dir/moc_DoubleThreshold.o
bin/libDoubleThreshold.so: bin/libV3DInterface.a
bin/libDoubleThreshold.so: bin/libV3DITKCommon.a
bin/libDoubleThreshold.so: /usr/lib/libQtGui.so
bin/libDoubleThreshold.so: /usr/lib/libQtCore.so
bin/libDoubleThreshold.so: Source/Thresholding/CMakeFiles/DoubleThreshold.dir/build.make
bin/libDoubleThreshold.so: Source/Thresholding/CMakeFiles/DoubleThreshold.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library ../../bin/libDoubleThreshold.so"
	cd /home/liyun/V3D/2010_hackathon/li_yun/ITK-Plugin-Build/Source/Thresholding && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DoubleThreshold.dir/link.txt --verbose=$(VERBOSE)
	cd /home/liyun/V3D/2010_hackathon/li_yun/ITK-Plugin-Build/Source/Thresholding && /usr/bin/cmake -E copy /home/liyun/V3D/2010_hackathon/li_yun/ITK-Plugin-Build/bin/libDoubleThreshold.so /home/liyun/V3D/v3d/plugins/ITK//Thresholding/DoubleThreshold/DoubleThreshold.so

# Rule to build all files generated by this target.
Source/Thresholding/CMakeFiles/DoubleThreshold.dir/build: bin/libDoubleThreshold.so
.PHONY : Source/Thresholding/CMakeFiles/DoubleThreshold.dir/build

Source/Thresholding/CMakeFiles/DoubleThreshold.dir/requires: Source/Thresholding/CMakeFiles/DoubleThreshold.dir/DoubleThreshold.o.requires
Source/Thresholding/CMakeFiles/DoubleThreshold.dir/requires: Source/Thresholding/CMakeFiles/DoubleThreshold.dir/moc_DoubleThreshold.o.requires
.PHONY : Source/Thresholding/CMakeFiles/DoubleThreshold.dir/requires

Source/Thresholding/CMakeFiles/DoubleThreshold.dir/clean:
	cd /home/liyun/V3D/2010_hackathon/li_yun/ITK-Plugin-Build/Source/Thresholding && $(CMAKE_COMMAND) -P CMakeFiles/DoubleThreshold.dir/cmake_clean.cmake
.PHONY : Source/Thresholding/CMakeFiles/DoubleThreshold.dir/clean

Source/Thresholding/CMakeFiles/DoubleThreshold.dir/depend: Source/Thresholding/moc_DoubleThreshold.cxx
	cd /home/liyun/V3D/2010_hackathon/li_yun/ITK-Plugin-Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/liyun/V3D/2010_hackathon/li_yun/ITK-V3D-Plugins /home/liyun/V3D/2010_hackathon/li_yun/ITK-V3D-Plugins/Source/Thresholding /home/liyun/V3D/2010_hackathon/li_yun/ITK-Plugin-Build /home/liyun/V3D/2010_hackathon/li_yun/ITK-Plugin-Build/Source/Thresholding /home/liyun/V3D/2010_hackathon/li_yun/ITK-Plugin-Build/Source/Thresholding/CMakeFiles/DoubleThreshold.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Source/Thresholding/CMakeFiles/DoubleThreshold.dir/depend
