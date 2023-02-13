add_library(libandroidfw STATIC
    ${AOSP}/androidfw/ApkAssets.cpp
	${AOSP}/androidfw/Asset.cpp
	${AOSP}/androidfw/AssetDir.cpp
	${AOSP}/androidfw/AssetManager.cpp
	${AOSP}/androidfw/AssetManager2.cpp
	${AOSP}/androidfw/AssetsProvider.cpp
	${AOSP}/androidfw/AttributeResolution.cpp
	${AOSP}/androidfw/ChunkIterator.cpp
	${AOSP}/androidfw/ConfigDescription.cpp
	${AOSP}/androidfw/Idmap.cpp
	${AOSP}/androidfw/LoadedArsc.cpp
	${AOSP}/androidfw/Locale.cpp
	${AOSP}/androidfw/LocaleData.cpp
	${AOSP}/androidfw/misc.cpp
	${AOSP}/androidfw/ObbFile.cpp
	${AOSP}/androidfw/PosixUtils.cpp
	${AOSP}/androidfw/ResourceTypes.cpp
	${AOSP}/androidfw/ResourceUtils.cpp
	${AOSP}/androidfw/StreamingZipInflater.cpp
	${AOSP}/androidfw/TypeWrappers.cpp
	${AOSP}/androidfw/Util.cpp
	${AOSP}/androidfw/ZipFileRO.cpp
	${AOSP}/androidfw/ZipUtils.cpp)

target_compile_definitions(libandroidfw PUBLIC -DSTATIC_ANDROIDFW_FOR_TOOLS)
target_compile_definitions(libandroidfw PRIVATE -D_GNU_SOURCE -DNDEBUG)

target_include_directories(libandroidfw PUBLIC
    ${AOSP}/androidfw/include
    ${AOSP}/libcutils/include
    ${AOSP}/liblog/include
    ${AOSP}/libsystem/include
    ${AOSP}/libutils/include
    ${AOSP}/libbase/include
    ${AOSP}/libziparchive/include
    ${AOSP}/incfs/util/include
    ${AOSP}/fmtlib/include)

target_link_libraries(libandroidfw PUBLIC fmt::fmt)
