add_library(liblog STATIC
    ${SRC}/liblog/log_event_list.cpp
    ${SRC}/liblog/log_event_write.cpp
    ${SRC}/liblog/logger_name.cpp
    ${SRC}/liblog/logger_read.cpp
    ${SRC}/liblog/logger_write.cpp
    ${SRC}/liblog/properties.cpp
    ${SRC}/liblog/logprint.cpp)

target_compile_definitions(liblog PRIVATE
    -DLIBLOG_LOG_TAG=1006 
    -D_XOPEN_SOURCE=700
    -DFAKE_LOG_DEVICE=1)
    
target_include_directories(liblog PUBLIC
    ${SRC}/libcutils/include
    ${SRC}/libutils/include 
    ${SRC}/libsystem/include
    ${SRC}/liblog/include
    ${SRC}/libbase/include)