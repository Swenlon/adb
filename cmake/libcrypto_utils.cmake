add_library(libcrypto_utils STATIC
    ${SRC}/libcrypto_utils/android_pubkey.cpp)
    
target_include_directories(libcrypto_utils PRIVATE
    ${SRC}/libcrypto_utils/include 
    ${SRC}/boringssl/include)