add_library(libutils STATIC
    ${AOSP}/libutils/Errors.cpp
	${AOSP}/libutils/FileMap.cpp
	${AOSP}/libutils/JenkinsHash.cpp
	${AOSP}/libutils/LightRefBase.cpp
	${AOSP}/libutils/NativeHandle.cpp
	${AOSP}/libutils/Printer.cpp
	${AOSP}/libutils/RefBase.cpp
	${AOSP}/libutils/SharedBuffer.cpp
	${AOSP}/libutils/StopWatch.cpp
	${AOSP}/libutils/String8.cpp
	${AOSP}/libutils/String16.cpp
	${AOSP}/libutils/StrongPointer.cpp
	${AOSP}/libutils/SystemClock.cpp
	${AOSP}/libutils/Threads.cpp
	${AOSP}/libutils/Timers.cpp
	${AOSP}/libutils/Tokenizer.cpp
	${AOSP}/libutils/Unicode.cpp
	${AOSP}/libutils/VectorImpl.cpp
	${AOSP}/libutils/misc.cpp)

target_include_directories(libutils PUBLIC
    ${AOSP}/libcutils/include
    ${AOSP}/libutils/include 
    ${AOSP}/libsystem/include
    ${AOSP}/liblog/include 
    ${AOSP}/libbase/include)