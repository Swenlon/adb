add_library(libincfs STATIC
    ${AOSP}/incfs/util/map_ptr.cpp)
    
target_include_directories(libincfs PUBLIC
    ${AOSP}/incfs/util/include 
    ${AOSP}/libbase/include
    ${AOSP}/libutils/include
    ${AOSP}/liblog/include)
