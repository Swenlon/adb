project(cmake)

# executable output
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin)

# precompiled libs
add_library(protobuf STATIC IMPORTED)
add_library(crypto STATIC IMPORTED)
add_library(ssl STATIC IMPORTED)
set_target_properties(protobuf PROPERTIES IMPORTED_LOCATION ${SRC}/protobuf/lib/${ANDROID_ABI}/libprotobuf.a)
set_target_properties(crypto PROPERTIES IMPORTED_LOCATION ${SRC}/boringssl/lib/${ANDROID_ABI}/libcrypto.a)
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
include(libsparse.cmake)
include(libext4_utils.cmake)
include(liblp.cmake)

# external-libs
include(libusb.cmake)
include(libz.cmake)

# tools
include(adb.cmake)
include(fastboot.cmake)