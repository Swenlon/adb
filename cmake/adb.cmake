# ========================= adb proto ============================
set(ADB_PROTO_SRC)  # adb proto source files
set(ADB_PROTO_HDRS) # adb proto head files
set(ADB_PROTO_DIR ${AOSP}/adb/proto)

file(GLOB_RECURSE PROTO_FILES ${ADB_PROTO_DIR}/*.proto)

foreach(proto ${PROTO_FILES})
    get_filename_component(FIL_WE ${proto} NAME_WE)
    
    set(TARGET_CPP_FILE "${ADB_PROTO_DIR}/${FIL_WE}.pb.cc")
    set(TARGET_HEAD_FILE "${ADB_PROTO_DIR}/${FIL_WE}.pb.h")
   
    if(EXISTS ${TARGET_CPP_FILE} AND EXISTS ${TARGET_HEAD_FILE})
        list(APPEND ADB_PROTO_SRC ${TARGET_CPP_FILE})
        list(APPEND ADB_PROTO_HDRS ${TARGET_HEAD_FILE})
    endif()
endforeach()

set_source_files_properties(${ADB_PROTO_SRC} PROPERTIES GENERATED TRUE)
set_source_files_properties(${ADB_PROTO_HDRS} PROPERTIES GENERATED TRUE)
# ========================= adb proto ============================


# ========================= fastdeploy proto ============================
# ApkEntry.proto
set(FASTDEPLOY_PROTO_SRC)  # adb proto source files
set(FASTDEPLOY_PROTO_HDRS) # adb proto head files
set(FASTDEPLOY_PROTO_DIR ${AOSP}/adb/fastdeploy/proto)

set(TARGET_CPP_FILE "${FASTDEPLOY_PROTO_DIR}/ApkEntry.pb.cc")
set(TARGET_HEAD_FILE "${FASTDEPLOY_PROTO_DIR}/ApkEntry.pb.h")
    
if(EXISTS ${TARGET_CPP_FILE} AND EXISTS ${TARGET_HEAD_FILE})
    list(APPEND FASTDEPLOY_PROTO_SRC ${TARGET_CPP_FILE})
    list(APPEND FASTDEPLOY_PROTO_HDRS ${TARGET_HEAD_FILE})
endif()

set_source_files_properties(${FASTDEPLOY_PROTO_SRC} PROPERTIES GENERATED TRUE)
set_source_files_properties(${FASTDEPLOY_PROTO_HDRS} PROPERTIES GENERATED TRUE)
# ========================= fastdeploy proto ============================


add_executable(adb
    ${AOSP}/adb/client/adb_client.cpp
    ${AOSP}/adb/client/bugreport.cpp
    ${AOSP}/adb/client/commandline.cpp
    ${AOSP}/adb/client/file_sync_client.cpp
    ${AOSP}/adb/client/main.cpp
    ${AOSP}/adb/client/console.cpp
    ${AOSP}/adb/client/adb_install.cpp
    ${AOSP}/adb/client/line_printer.cpp
    ${AOSP}/adb/client/fastdeploy.cpp
    ${AOSP}/adb/client/fastdeploycallbacks.cpp
    ${AOSP}/adb/client/incremental.cpp
    ${AOSP}/adb/client/incremental_server.cpp
    ${AOSP}/adb/client/incremental_utils.cpp
    ${AOSP}/adb/client/auth.cpp
    ${AOSP}/adb/client/adb_wifi.cpp
    ${AOSP}/adb/client/usb_libusb.cpp
    ${AOSP}/adb/client/transport_local.cpp
    ${AOSP}/adb/client/transport_usb.cpp
    ${AOSP}/adb/client/pairing/pairing_client.cpp
    ${AOSP}/adb/client/usb_linux.cpp
    ${AOSP}/adb/shell_service_protocol.cpp
    ${AOSP}/adb/adb.cpp
    ${AOSP}/adb/adb_io.cpp
    ${AOSP}/adb/adb_listeners.cpp
    ${AOSP}/adb/adb_trace.cpp
    ${AOSP}/adb/adb_unique_fd.cpp
    ${AOSP}/adb/adb_utils.cpp
    ${AOSP}/adb/fdevent/fdevent.cpp
    ${AOSP}/adb/fdevent/fdevent_epoll.cpp
    ${AOSP}/adb/services.cpp
    ${AOSP}/adb/sockets.cpp
    ${AOSP}/adb/socket_spec.cpp
    ${AOSP}/adb/sysdeps/env.cpp
    ${AOSP}/adb/sysdeps/errno.cpp
    ${AOSP}/adb/sysdeps_unix.cpp
    ${AOSP}/adb/sysdeps/posix/network.cpp
    ${AOSP}/adb/sysdeps/env.cpp
    ${AOSP}/adb/transport.cpp
    ${AOSP}/adb/transport_fd.cpp
    ${AOSP}/adb/types.cpp
    ${AOSP}/adb/crypto/key.cpp
    ${AOSP}/adb/crypto/rsa_2048_key.cpp
    ${AOSP}/adb/crypto/x509_generator.cpp
    ${AOSP}/adb/tls/adb_ca_list.cpp
    ${AOSP}/adb/tls/tls_connection.cpp
    ${AOSP}/adb/pairing_connection/pairing_connection.cpp
    ${AOSP}/adb/pairing_auth/aes_128_gcm.cpp
    ${AOSP}/adb/pairing_auth/pairing_auth.cpp
    ${AOSP}/adb/fastdeploy/deploypatchgenerator/apk_archive.cpp
    ${AOSP}/adb/fastdeploy/deploypatchgenerator/deploy_patch_generator.cpp
    ${AOSP}/adb/fastdeploy/deploypatchgenerator/patch_utils.cpp
    ${AOSP}/adb/fastdeploy/proto/ApkEntry.proto
    ${ADB_PROTO_SRC} ${ADB_PROTO_HDRS}
    ${FASTDEPLOY_PROTO_SRC} ${FASTDEPLOY_PROTO_HDRS})
    
target_include_directories(adb PRIVATE
    ${AOSP}/adb
    ${AOSP}/adb/proto
    ${AOSP}/adb/fastdeploy/deployagent
    ${AOSP}/adb/crypto/include
    ${AOSP}/adb/pairing_auth/include
    ${AOSP}/adb/pairing_connection/include
    ${AOSP}/adb/tls/include
    ${AOSP}/androidfw/include
    ${AOSP}/libbase/include
    ${AOSP}/libziparchive/include
    ${AOSP}/libcrypto_utils/include
    ${AOSP}/libcutils/include
    ${AOSP}/diagnose_usb/include
    ${AOSP}/incfs/util/include
    ${AOSP}/protobuf/src
    ${AOSP}/lz4/lib
    ${AOSP}/zstd/lib
    ${AOSP}/libusb
    ${AOSP}/brotli/c/include
    ${AOSP}/fmtlib/include
    ${AOSP}/boringssl/include
    ${AOSP}/googletest/googletest/include)
    
target_compile_definitions(adb PRIVATE 
    -D_GNU_SOURCE
    -DADB_HOST=1
    -DENABLE_FASTDEPLOY)

target_link_libraries(adb
    libbase
    libutils
    libcutils
    libdiagnoseusb
    libandroidfw
    libziparchive
    liblog
    libincfs
    libcrypto_utils
    crypto
    ssl
    protobuf
    libusb
    brotlicommon-static
    brotlidec-static
    brotlienc-static
    libzstd_static
    lz4_static
    libz)
