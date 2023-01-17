add_library(libz STATIC
    ${SRC}/zlib/adler32.c
    ${SRC}/zlib/compress.c
    ${SRC}/zlib/cpu_features.c
    ${SRC}/zlib/crc32.c
    ${SRC}/zlib/deflate.c
    ${SRC}/zlib/gzclose.c
    ${SRC}/zlib/gzlib.c
    ${SRC}/zlib/gzread.c
    ${SRC}/zlib/gzwrite.c
    ${SRC}/zlib/infback.c
    ${SRC}/zlib/inffast.c
    ${SRC}/zlib/inflate.c
    ${SRC}/zlib/inftrees.c
    ${SRC}/zlib/trees.c
    ${SRC}/zlib/uncompr.c
    ${SRC}/zlib/zutil.c)

target_compile_definitions(libz PRIVATE
    -DHAVE_HIDDEN
    -DZLIB_CONST)
    
target_include_directories(libz PRIVATE ${SRC}/zlib)
