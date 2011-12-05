#set project name; still don't know what it does :P
project(CAMCaputure)

#header include folders
include_directories("/usr/local/include/opencv" "/usr/local/include/opencv2" "/usr/local/include")

#executable name
add_executable(CAMCapture CAMCapture.cpp)

#link libraries for executable
target_link_libraries(CAMCapture libopencv_core.so  libopencv_highgui.so)
