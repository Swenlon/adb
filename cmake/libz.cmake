#
# Copyright © 2022 Github RohitVerma882
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

add_library(libz STATIC
    ${SRC}/zlib/adler32.c
    ${SRC}/zlib/compress.c
    ${SRC}/zlib/cpu_features.c
    ${SRC}/zlib/crc32.c
    ${SRC}/zlib/deflate.c
    ${SRC}/zlib/gzclose.c
    ${SRC}/zlib/gzlib.c
    ${SRC}/zlib/gzread.c
    ${SRC}/zlib/gzwrite.c
    ${SRC}/zlib/infback.c
    ${SRC}/zlib/inffast.c
    ${SRC}/zlib/inflate.c
    ${SRC}/zlib/inftrees.c
    ${SRC}/zlib/trees.c
    ${SRC}/zlib/uncompr.c
    ${SRC}/zlib/zutil.c)

target_compile_definitions(libz PRIVATE
    -DHAVE_HIDDEN
    -DZLIB_CONST)
    
target_include_directories(libz PRIVATE ${SRC}/zlib)
