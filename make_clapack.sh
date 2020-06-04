cmake \
  -DCMAKE_TOOLCHAIN_FILE=/home/cg/tools/android_tools/android-ndk-r16b/build/cmake/android.toolchain.cmake \
  -DCMAKE_INSTALL_PREFIX="/opt/clapack_cg/" \
  -DCMAKE_BUILD_TYPE=Release \
  -DBUILD_ANDROID=TRUE \
  -DANDROID_NDK=/home/cg/tools/android_tools/android-ndk-r16b \
  -DANDROID_TOOLCHAIN="gcc" \
  -DANDROID_ABI="armeabi-v7a" \
  -DANDROID_STL="gnustl_static" \
  -DANDROID_CPP_FEATURES="rtti exceptions" \
  -DANDROID_PLATFORM=android-23 \
  -DANDROID_ARM_NEON=TRUE \
  -DANDROID_DISABLE_FORMAT_STRING_CHECKS=TRUE \
  .. && cmake --build .
