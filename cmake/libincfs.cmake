add_library(libincfs STATIC
    ${SRC}/incfs/util/map_ptr.cpp)
    
target_include_directories(libincfs PUBLIC
    ${SRC}/incfs/util/include 
    ${SRC}/libbase/include
    ${SRC}/libutils/include
    ${SRC}/liblog/include)
