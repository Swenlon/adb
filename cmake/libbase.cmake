add_library(libbase STATIC
    ${AOSP}/libbase/errors_unix.cpp
    ${AOSP}/libbase/abi_compatibility.cpp
	${AOSP}/libbase/chrono_utils.cpp
	${AOSP}/libbase/cmsg.cpp
	${AOSP}/libbase/file.cpp
	${AOSP}/libbase/hex.cpp
	${AOSP}/libbase/logging.cpp
	${AOSP}/libbase/mapped_file.cpp
	${AOSP}/libbase/parsebool.cpp
	${AOSP}/libbase/parsenetaddress.cpp
	${AOSP}/libbase/posix_strerror_r.cpp
	${AOSP}/libbase/process.cpp
	${AOSP}/libbase/properties.cpp
	${AOSP}/libbase/stringprintf.cpp
	${AOSP}/libbase/strings.cpp
	${AOSP}/libbase/threads.cpp
	${AOSP}/libbase/test_utils.cpp)

target_include_directories(libbase PUBLIC
    ${AOSP}/libbase/include 
    ${AOSP}/libcutils/include
    ${AOSP}/libutils/include 
    ${AOSP}/libsystem/include
    ${AOSP}/liblog/include)