# cmake -DCMAKE_BUILD_TYPE=DEBUG -DBUILD_CUDA_MODULES=ON -DOPENCV_SRCPATH=`pwd`/../opencv .
# cmake -DCMAKE_BUILD_TYPE=RELEASE -DOPENCV_SRCPATH=`pwd`/../opencv .
# cmake -DCMAKE_BUILD_TYPE=PROFILING -DBUILD_CUDA_MODULES=ON -DOPENCV_SRCPATH=`pwd`/../opencv .

cmake_minimum_required(VERSION 2.6)
project(cv)

SET(CMAKE_C_FLAGS_PROFILING "-pg -g -O3" CACHE STRING "")
SET(CMAKE_CXX_FLAGS_PROFILING "-pg -g -O3" CACHE STRING "")

# configure opencv
if (NOT OPENCV_SRCPATH)
  message(FATAL_ERROR "You must set OPENCV_SRCPATH to some absolute path (e.g., -DOPENCV_SRCPATH=`pwd`/../../opencv)")
endif()

include_directories(${OPENCV_SRCPATH}/include ${OPENCV_SRCPATH} ${OPENCV_SRCPATH}/include/opencv ${OPENCV_SRCPATH}/interfaces/swig/python)
link_directories(${OPENCV_SRCPATH}/lib)
if (OPENCV_PATH)
  link_directories(${OPENCV_PATH})
endif()

find_package(PythonLibs)
include_directories(${PYTHON_INCLUDE_PATH})
include_directories(${CMAKE_CURRENT_SOURCE_DIR})

# register sub-directories
add_subdirectory(src)
add_subdirectory(third)
add_subdirectory(python)

