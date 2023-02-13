cmake_minimum_required(VERSION 3.6)
project(adb VERSION 1.0.0 LANGUAGES C CXX)

# Use C11 with GNU extensions
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_EXTENSIONS ON)
set(CMAKE_C_STANDARD_REQUIRED ON)

# Use C++20 with GNU extensions
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_EXTENSIONS ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Globle flags
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fcolor-diagnostics -fPIC")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fcolor-diagnostics -fPIC")

# Disable warnings
add_compile_options(-Wno-attributes)

# 64-bit off_t for lseek
add_compile_definitions(_FILE_OFFSET_BITS=64)

# Sources
set(AOSP ${PROJECT_SOURCE_DIR}/src)

# Building
add_library(protobuf STATIC IMPORTED)
set_target_properties(protobuf PROPERTIES IMPORTED_LOCATION ${AOSP}/protobuf/lib/${ANDROID_ABI}/libprotobuf.a)
add_library(crypto STATIC IMPORTED)
set_target_properties(crypto PROPERTIES IMPORTED_LOCATION ${AOSP}/boringssl/lib/${ANDROID_ABI}/libcrypto.a)
add_library(ssl STATIC IMPORTED)
set_target_properties(ssl PROPERTIES IMPORTED_LOCATION ${AOSP}/boringssl/lib/${ANDROID_ABI}/libssl.a)
add_subdirectory(src/fmtlib EXCLUDE_FROM_ALL)
add_subdirectory(src/googletest EXCLUDE_FROM_ALL)
add_subdirectory(src/zstd/build/cmake EXCLUDE_FROM_ALL)
add_subdirectory(src/lz4/build/cmake EXCLUDE_FROM_ALL)
add_subdirectory(src/brotli EXCLUDE_FROM_ALL)
add_subdirectory(cmake)
