add_library(libext4_utils STATIC
	${SRC}/ext4_utils/ext4_utils.cpp
	${SRC}/ext4_utils/wipe.cpp
	${SRC}/ext4_utils/ext4_sb.cpp)

target_include_directories(libext4_utils PUBLIC
	${SRC}/libsparse/include
	${SRC}/libutils/include
    ${SRC}/libcutils/include
	${SRC}/ext4_utils/include
	${SRC}/libbase/include)
