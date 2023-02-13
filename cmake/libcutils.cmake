add_library(libcutils STATIC
    ${AOSP}/libcutils/socket_inaddr_any_server_unix.cpp
	${AOSP}/libcutils/socket_local_client_unix.cpp
	${AOSP}/libcutils/socket_local_server_unix.cpp
	${AOSP}/libcutils/socket_network_client_unix.cpp
	${AOSP}/libcutils/sockets_unix.cpp
	${AOSP}/libcutils/sockets.cpp
	${AOSP}/libcutils/fs.cpp
	${AOSP}/libcutils/hashmap.cpp
	${AOSP}/libcutils/multiuser.cpp
	${AOSP}/libcutils/str_parms.cpp
	${AOSP}/libcutils/ashmem-host.cpp
	${AOSP}/libcutils/canned_fs_config.cpp
	${AOSP}/libcutils/fs_config.cpp
	${AOSP}/libcutils/trace-host.cpp
	${AOSP}/libcutils/config_utils.cpp
	${AOSP}/libcutils/iosched_policy.cpp
	${AOSP}/libcutils/load_file.cpp
	${AOSP}/libcutils/native_handle.cpp
	${AOSP}/libcutils/properties.cpp
	${AOSP}/libcutils/record_stream.cpp
	${AOSP}/libcutils/strlcpy.c
	${AOSP}/libcutils/threads.cpp)

target_compile_definitions(libcutils PRIVATE -D_GNU_SOURCE)

target_include_directories(libcutils PUBLIC
    ${AOSP}/libbase/include
    ${AOSP}/libutils/include
    ${AOSP}/libcutils/include
    ${AOSP}/liblog/include)