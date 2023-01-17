add_library(liblp STATIC
	${SRC}/liblp/images.cpp
	${SRC}/liblp/partition_opener.cpp
	${SRC}/liblp/reader.cpp
	${SRC}/liblp/utility.cpp
	${SRC}/liblp/writer.cpp)
	
target_include_directories(liblp PUBLIC
	${SRC}/liblp/include
	${SRC}/libbase/include
    ${SRC}/libcutils/include
	${SRC}/ext4_utils/include
	${SRC}/libsparse/include
	${SRC}/boringssl/include)
	
target_link_libraries(liblp PUBLIC fmt::fmt)
