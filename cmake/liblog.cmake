add_library(liblog STATIC
    ${AOSP}/liblog/log_event_list.cpp
    ${AOSP}/liblog/log_event_write.cpp
    ${AOSP}/liblog/logger_name.cpp
    ${AOSP}/liblog/logger_read.cpp
    ${AOSP}/liblog/logger_write.cpp
    ${AOSP}/liblog/properties.cpp
    ${AOSP}/liblog/logprint.cpp)

target_compile_definitions(liblog PRIVATE
    -DLIBLOG_LOG_TAG=1006 
    -D_XOPEN_SOURCE=700
    -DFAKE_LOG_DEVICE=1)
    
target_include_directories(liblog PUBLIC
    ${AOSP}/libcutils/include
    ${AOSP}/libutils/include 
    ${AOSP}/libsystem/include
    ${AOSP}/liblog/include
    ${AOSP}/libbase/include)