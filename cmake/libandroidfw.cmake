add_library(libandroidfw STATIC
    ${SRC}/androidfw/ApkAssets.cpp
	${SRC}/androidfw/Asset.cpp
	${SRC}/androidfw/AssetDir.cpp
	${SRC}/androidfw/AssetManager.cpp
	${SRC}/androidfw/AssetManager2.cpp
	${SRC}/androidfw/AssetsProvider.cpp
	${SRC}/androidfw/AttributeResolution.cpp
	${SRC}/androidfw/ChunkIterator.cpp
	${SRC}/androidfw/ConfigDescription.cpp
	${SRC}/androidfw/Idmap.cpp
	${SRC}/androidfw/LoadedArsc.cpp
	${SRC}/androidfw/Locale.cpp
	${SRC}/androidfw/LocaleData.cpp
	${SRC}/androidfw/misc.cpp
	${SRC}/androidfw/ObbFile.cpp
	${SRC}/androidfw/PosixUtils.cpp
	${SRC}/androidfw/ResourceTypes.cpp
	${SRC}/androidfw/ResourceUtils.cpp
	${SRC}/androidfw/StreamingZipInflater.cpp
	${SRC}/androidfw/TypeWrappers.cpp
	${SRC}/androidfw/Util.cpp
	${SRC}/androidfw/ZipFileRO.cpp
	${SRC}/androidfw/ZipUtils.cpp)

target_compile_definitions(libandroidfw PUBLIC -DSTATIC_ANDROIDFW_FOR_TOOLS)
target_compile_definitions(libandroidfw PRIVATE -D_GNU_SOURCE -DNDEBUG)

target_include_directories(libandroidfw PUBLIC
    ${SRC}/androidfw/include
    ${SRC}/libcutils/include
    ${SRC}/liblog/include
    ${SRC}/libsystem/include
    ${SRC}/libutils/include
    ${SRC}/libbase/include
    ${SRC}/libziparchive/include
    ${SRC}/incfs/util/include
    ${SRC}/fmtlib/include)

target_link_libraries(libandroidfw PUBLIC fmt::fmt)
