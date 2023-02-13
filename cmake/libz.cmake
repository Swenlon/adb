add_library(libz STATIC
    ${AOSP}/zlib/adler32.c
    ${AOSP}/zlib/compress.c
    ${AOSP}/zlib/cpu_features.c
    ${AOSP}/zlib/crc32.c
    ${AOSP}/zlib/deflate.c
    ${AOSP}/zlib/gzclose.c
    ${AOSP}/zlib/gzlib.c
    ${AOSP}/zlib/gzread.c
    ${AOSP}/zlib/gzwrite.c
    ${AOSP}/zlib/infback.c
    ${AOSP}/zlib/inffast.c
    ${AOSP}/zlib/inflate.c
    ${AOSP}/zlib/inftrees.c
    ${AOSP}/zlib/trees.c
    ${AOSP}/zlib/uncompr.c
    ${AOSP}/zlib/zutil.c)

target_compile_definitions(libz PRIVATE
    -DHAVE_HIDDEN
    -DZLIB_CONST)
    
target_include_directories(libz PRIVATE ${AOSP}/zlib)
target_include_directories(libz PUBLIC ${AOSP}/zlib)
