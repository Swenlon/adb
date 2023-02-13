add_library(libziparchive STATIC
    ${AOSP}/libziparchive/zip_archive.cc
    ${AOSP}/libziparchive/zip_archive_stream_entry.cc
    ${AOSP}/libziparchive/zip_cd_entry_map.cc
    ${AOSP}/libziparchive/zip_writer.cc
    ${AOSP}/libziparchive/zip_error.cpp
    ${AOSP}/libziparchive/incfs_support/signal_handling.cpp)

target_compile_definitions(libziparchive PRIVATE -DZLIB_CONST)
    
target_include_directories(libziparchive PRIVATE
    ${AOSP}/libziparchive/include
    ${AOSP}/libziparchive/incfs_support/include
    ${AOSP}/libbase/include 
    ${AOSP}/liblog/include
    ${AOSP}/googletest/googletest/include)