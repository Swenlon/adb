#!/usr/bin/bash

if [[ -z "$NDK" ]]; then
  echo "Please specify the Android NDK environment variable \"NDK\"."
  exit 1
fi

NDK_TOOLCHAIN="$NDK/toolchains/llvm/prebuilt/linux-x86_64"
STRIP="$NDK_TOOLCHAIN/bin/llvm-strip"
CLEAN=termux-elf-cleaner

adb_deployagent="$PWD/src/adb/fastdeploy/deployagent"
cp "$PWD/patches/adb/misc/deployagent.inc" "$adb_deployagent"
cp "$PWD/patches/adb/misc/deployagentscript.inc" "$adb_deployagent"

TARGET_ABI="$1"
TARGET_API="24"
PWD="$(pwd)"

cmake -GNinja -B "$PWD/build" \
  -DANDROID_NDK="$NDK" \
  -DCMAKE_TOOLCHAIN_FILE="$NDK/build/cmake/android.toolchain.cmake" \
  -DANDROID_ABI="$TARGET_ABI" \
  -DANDROID_NATIVE_API_LEVEL="$TARGET_API" \
  -DCMAKE_SYSTEM_NAME="Android" \
  -DCMAKE_BUILD_TYPE="Release" \
  -DANDROID_STL="c++_static" || exit 1

ninja -C "$PWD/build" "-j$(nproc)" || exit 1

adb="$PWD/build/bin/adb"
$STRIP --strip-all "$adb" || exit 1
$CLEAN --api-level "$TARGET_API" "$adb" || exit 1