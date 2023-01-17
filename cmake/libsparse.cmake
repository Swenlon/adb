add_library(libsparse STATIC
	${SRC}/libsparse/backed_block.cpp
	${SRC}/libsparse/output_file.cpp
	${SRC}/libsparse/sparse.cpp
	${SRC}/libsparse/sparse_crc32.cpp
	${SRC}/libsparse/sparse_err.cpp
	${SRC}/libsparse/sparse_read.cpp)

target_include_directories(libsparse PUBLIC
	${SRC}/libsparse/include
	${SRC}/libbase/include)
	
target_link_libraries(libsparse PRIVATE libbase)