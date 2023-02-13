cmake_minimum_required(VERSION 3.6)
project(cmake VERSION 1.0.0 LANGUAGES C CXX ASM)

# Binarys output
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin)

# Libs
include(libbase.cmake)
include(libcutils.cmake)
include(libutils.cmake)
include(liblog.cmake)
include(libziparchive.cmake)
include(libandroidfw.cmake)
include(libincfs.cmake)
include(libdiagnoseusb.cmake)
include(libcrypto_utils.cmake)

# External libs
include(libusb.cmake)
include(libz.cmake)

# Tools
include(adb.cmake)