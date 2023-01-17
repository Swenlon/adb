add_library(libutils STATIC
    ${SRC}/libutils/Errors.cpp
	${SRC}/libutils/FileMap.cpp
	${SRC}/libutils/JenkinsHash.cpp
	${SRC}/libutils/LightRefBase.cpp
	${SRC}/libutils/NativeHandle.cpp
	${SRC}/libutils/Printer.cpp
	${SRC}/libutils/RefBase.cpp
	${SRC}/libutils/SharedBuffer.cpp
	${SRC}/libutils/StopWatch.cpp
	${SRC}/libutils/String8.cpp
	${SRC}/libutils/String16.cpp
	${SRC}/libutils/StrongPointer.cpp
	${SRC}/libutils/SystemClock.cpp
	${SRC}/libutils/Threads.cpp
	${SRC}/libutils/Timers.cpp
	${SRC}/libutils/Tokenizer.cpp
	${SRC}/libutils/Unicode.cpp
	${SRC}/libutils/VectorImpl.cpp
	${SRC}/libutils/misc.cpp)

target_include_directories(libutils PUBLIC
    ${SRC}/libcutils/include
    ${SRC}/libutils/include 
    ${SRC}/libsystem/include
    ${SRC}/liblog/include 
    ${SRC}/libbase/include)