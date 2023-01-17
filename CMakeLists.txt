project(adb)
cmake_minimum_required(VERSION 3.14.2)

# enable languages
enable_language(C CXX ASM)

# use C11 with GNU extensions
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_EXTENSIONS ON)
set(CMAKE_C_STANDARD_REQUIRED ON)

# use C++20 with GNU extensions
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_EXTENSIONS ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# globle flags
add_compile_options(-fcolor-diagnostics -fPIC -Wno-attributes)
add_compile_definitions(_FILE_OFFSET_BITS=64)

# sources
set(SRC ${PROJECT_SOURCE_DIR}/src)

# includes
include_directories(${CMAKE_CURRENT_BINARY_DIR})

# building
add_subdirectory(src/fmtlib EXCLUDE_FROM_ALL)
add_subdirectory(src/googletest EXCLUDE_FROM_ALL)
add_subdirectory(src/zstd/build/cmake EXCLUDE_FROM_ALL)
add_subdirectory(src/lz4/build/cmake EXCLUDE_FROM_ALL)
add_subdirectory(src/brotli EXCLUDE_FROM_ALL)
add_subdirectory(cmake)
