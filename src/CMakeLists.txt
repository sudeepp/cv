include_directories(${PYTHON_INCLUDE_PATH})
link_libraries(${PYTHON_LIBRARY})

find_package(OpenGL REQUIRED)

set(srcs
  webcam.cc
  )

link_libraries(srcs ${OPENGL_LIBRARIES} ${OPENGL_glu_LIBRARY}) # * remove this
link_libraries(cv${OPENCV_VERSION} highgui${OPENCV_VERSION} cxcore${OPENCV_VERSION})

link_libraries(blobs)
include_directories(../third/blobs)

add_library(srcs SHARED ${srcs})

add_executable(../bin/vkeybd vkeybd.cc)
add_executable(../bin/face facedetect.cc)
#add_executable(../bin/skindetect adaptiveskindetector.cpp)

#target_link_libraries(srcsx srcs)
