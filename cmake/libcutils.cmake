add_library(libcutils STATIC
    ${SRC}/libcutils/socket_inaddr_any_server_unix.cpp
	${SRC}/libcutils/socket_local_client_unix.cpp
	${SRC}/libcutils/socket_local_server_unix.cpp
	${SRC}/libcutils/socket_network_client_unix.cpp
	${SRC}/libcutils/sockets_unix.cpp
	${SRC}/libcutils/sockets.cpp
	${SRC}/libcutils/fs.cpp
	${SRC}/libcutils/hashmap.cpp
	${SRC}/libcutils/multiuser.cpp
	${SRC}/libcutils/str_parms.cpp
	${SRC}/libcutils/ashmem-host.cpp
	${SRC}/libcutils/canned_fs_config.cpp
	${SRC}/libcutils/fs_config.cpp
	${SRC}/libcutils/trace-host.cpp
	${SRC}/libcutils/config_utils.cpp
	${SRC}/libcutils/iosched_policy.cpp
	${SRC}/libcutils/load_file.cpp
	${SRC}/libcutils/native_handle.cpp
	${SRC}/libcutils/properties.cpp
	${SRC}/libcutils/record_stream.cpp
	${SRC}/libcutils/strlcpy.c
	${SRC}/libcutils/threads.cpp)

target_compile_definitions(libcutils PRIVATE -D_GNU_SOURCE)

target_include_directories(libcutils PUBLIC
    ${SRC}/libbase/include
    ${SRC}/libutils/include
    ${SRC}/libcutils/include
    ${SRC}/liblog/include)