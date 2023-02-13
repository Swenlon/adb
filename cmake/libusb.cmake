add_library(libusb STATIC
    ${AOSP}/libusb/libusb/core.c
    ${AOSP}/libusb/libusb/descriptor.c
    ${AOSP}/libusb/libusb/hotplug.c
    ${AOSP}/libusb/libusb/io.c
    ${AOSP}/libusb/libusb/sync.c
    ${AOSP}/libusb/libusb/strerror.c
    ${AOSP}/libusb/libusb/os/linux_usbfs.c
    ${AOSP}/libusb/libusb/os/events_posix.c
    ${AOSP}/libusb/libusb/os/threads_posix.c
    ${AOSP}/libusb/libusb/os/linux_netlink.c)
    
target_include_directories(libusb PRIVATE
    ${AOSP}/libusb/libusb
    ${AOSP}/libusb/libusb/os
    ${AOSP}/libusb/android)
    
target_compile_options(libusb PRIVATE
    -fvisibility=hidden 
    -pthread)