export CLAPACKDIR=/home/cg/projects/3rdparty/suitesparse_for_android/clapack

cmake \
  -DCMAKE_TOOLCHAIN_FILE=/home/cg/tools/android_tools/android-ndk-r16b/build/cmake/android.toolchain.cmake \
  -DCMAKE_INSTALL_PREFIX="/opt/spqr_cg/" \
  -DCMAKE_CXX_FLAGS="-std=c++11" \
  -DCMAKE_BUILD_TYPE=Release \
  -DANDROID_NDK=/home/cg/tools/android_tools/android-ndk-r16b \
  -DANDROID_TOOLCHAIN="gcc" \
  -DANDROID_ABI="armeabi-v7a" \
  -DANDROID_STL="gnustl_static" \
  -DANDROID_CPP_FEATURES="rtti exceptions" \
  -DANDROID_PLATFORM=android-23 \
  -DANDROID_ARM_NEON=TRUE  \
  -DANDROID_DISABLE_FORMAT_STRING_CHECKS=TRUE \
  .. \
  && cmake --build .
