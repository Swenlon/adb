project(cmake)

# executable output
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin)

# Precompiled libs
add_library(protobuf STATIC IMPORTED)
set_target_properties(protobuf PROPERTIES IMPORTED_LOCATION ${SRC}/protobuf/lib/${ANDROID_ABI}/libprotobuf.a)
add_library(crypto STATIC IMPORTED)
set_target_properties(crypto PROPERTIES IMPORTED_LOCATION ${SRC}/boringssl/lib/${ANDROID_ABI}/libcrypto.a)
add_library(ssl STATIC IMPORTED)
set_target_properties(ssl PROPERTIES IMPORTED_LOCATION ${SRC}/boringssl/lib/${ANDROID_ABI}/libssl.a)

# libs
include(libbase.cmake)
include(libcutils.cmake)
include(libutils.cmake)
include(liblog.cmake)
include(libziparchive.cmake)
include(libandroidfw.cmake)
include(libincfs.cmake)
include(libdiagnoseusb.cmake)
include(libcrypto_utils.cmake)

# external-libs
include(libusb.cmake)
include(libz.cmake)

# tools
include(adb.cmake)