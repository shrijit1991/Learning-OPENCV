#set project name; still don't know what it does :P
project(CAMCaputure)

#header include folders
include_directories("C:/opencv/build/include" "C:/opencv/build/include/opencv2" "C:/opencv/build/include/opencv")

set(LIB_PATH $ENV{OPENCV_LIB_PATH})
message("${LIB_PATH}")

#executable name
add_executable(CAMCapture CAMCapture.cpp)

#link libraries for executable
target_link_libraries(CAMCapture ${LIB_PATH}/opencv_core231d.lib  ${LIB_PATH}/opencv_highgui231d.lib)
