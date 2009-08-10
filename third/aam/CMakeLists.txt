
add_library(aam 
  AAM_Basic.cpp
  AAM_CAM.cpp
  AAM_IC.cpp
  AAM_MovieAVI.cpp
  AAM_PAW.cpp
  AAM_PDM.cpp
  AAM_Shape.cpp
  AAM_TDM.cpp
  AAM_Util.cpp
  VJfacedetect.cpp
  )
set_target_properties(aam PROPERTIES PREFIX "" SUFFIX ".mod")
