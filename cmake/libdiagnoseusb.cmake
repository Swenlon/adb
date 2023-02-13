add_library(libdiagnoseusb STATIC
	${AOSP}/diagnose_usb/diagnose_usb.cpp)

target_include_directories(libdiagnoseusb PRIVATE
    ${AOSP}/diagnose_usb/include
	${AOSP}/libutils/include
    ${AOSP}/libcutils/include 
	${AOSP}/libbase/include)
