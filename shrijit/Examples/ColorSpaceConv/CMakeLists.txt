#set project name; still don't know what it does :P
project(ColorSpaceConv)

#header include folders
include_directories("/usr/local/include/opencv" "/usr/local/include/opencv2" "/usr/local/include")

#library path
add_library(OpenCV_Core STATIC IMPORTED)
set_property(TARGET OpenCV_Core PROPERTY IMPORTED_LOCATION "/usr/local/lib/libopencv_core.so.2.3")


add_library(OpenCV_Highgui STATIC IMPORTED)
set_property(TARGET OpenCV_Highgui PROPERTY IMPORTED_LOCATION "/usr/local/lib/libopencv_highgui.so.2.3")

add_library(OpenCV_Imgproc STATIC IMPORTED)
set_property(TARGET OpenCV_Imgproc PROPERTY IMPORTED_LOCATION "/usr/local/lib/libopencv_imgproc.so.2.3")

#executable name
add_executable(ColorSpaceConv CSConv.cpp)

#link libraries for executable
target_link_libraries(ColorSpaceConv OpenCV_Core  OpenCV_Highgui OpenCV_Imgproc)
