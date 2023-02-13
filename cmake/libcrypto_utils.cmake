add_library(libcrypto_utils STATIC
    ${AOSP}/libcrypto_utils/android_pubkey.cpp)
    
target_include_directories(libcrypto_utils PRIVATE
    ${AOSP}/libcrypto_utils/include 
    ${AOSP}/boringssl/include)