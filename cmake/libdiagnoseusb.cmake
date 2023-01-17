add_library(libdiagnoseusb STATIC
	${SRC}/diagnose_usb/diagnose_usb.cpp)

target_include_directories(libdiagnoseusb PRIVATE
    ${SRC}/diagnose_usb/include
	${SRC}/libutils/include
    ${SRC}/libcutils/include 
	${SRC}/libbase/include)
