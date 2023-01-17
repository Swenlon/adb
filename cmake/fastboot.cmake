add_executable(fastboot
	${SRC}/fastboot/main.cpp
	${SRC}/fastboot/bootimg_utils.cpp
	${SRC}/fastboot/fastboot.cpp
	${SRC}/fastboot/fastboot_driver.cpp
	${SRC}/fastboot/fs.cpp
	${SRC}/fastboot/socket.cpp
	${SRC}/fastboot/tcp.cpp
	${SRC}/fastboot/udp.cpp
	${SRC}/fastboot/usb_linux.cpp
	${SRC}/fastboot/vendor_boot_img_utils.cpp
	${SRC}/fastboot/util.cpp)

target_include_directories(fastboot PRIVATE
	${SRC}/libbase/include
	${SRC}/libsparse/include
    ${SRC}/diagnose_usb/include
	${SRC}/libziparchive/include
	${SRC}/mkbootimg/include/bootimg
    ${SRC}/ext4_utils/include
	${SRC}/liblp/include
	${SRC}/libstorage_literals
	${SRC}
	${SRC}/googletest/googletest/include
    ${SRC}/zlib)
	
target_compile_definitions(fastboot PRIVATE
	-D_GNU_SOURCE
	-D_XOPEN_SOURCE=700
	-DUSE_F2FS)

target_link_libraries(fastboot
	libcutils
    libincfs
	liblog
	liblp
	libutils
	libbase
	libsparse
	libziparchive
    libandroidfw
	libext4_utils
	libdiagnoseusb
	crypto
    gtest
	libz)
