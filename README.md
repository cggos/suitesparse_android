# SuiteSparse for Android

-----

## Build

* build clapack
  ```sh
  cd clapack-3.2.1
  mkdir build & cd build
  cp ../../make_clapack.sh ./
  ./make_clapack.sh # modify
  ```

* build suitesparse
  ```sh
  cd suitesparse
  mkdir build & cd build
  cp ../../make_suitesparse.sh

  ./make_suitesparse.sh # modify
  sudo make install
  ```

## Usage with Android NDK

* add code in your Android.mk as following
  ```makefile
  # include $(LARVIO_ROOT)/ndk-modules/spqr/Android.mk

  SPQR_ROOT := /opt/spqr_cg # install dir
  CLAPACK_ROOT := /home/cg/projects/3rdparty/suitesparse_for_android/clapack-3.2.1/build # source build dir

  LOCAL_C_INCLUDES += $(SPQR_ROOT)/include/suitesparse/

  LOCAL_LDLIBS += $(SPQR_ROOT)/lib/libspqr.a \
                  $(SPQR_ROOT)/lib/libbtf.a \
                  $(SPQR_ROOT)/lib/libcholmod.a \
                  $(SPQR_ROOT)/lib/libcolamd.a \
                  $(SPQR_ROOT)/lib/libamd.a \
                  $(SPQR_ROOT)/lib/libcamd.a \
                  $(SPQR_ROOT)/lib/libccolamd.a \
                  $(SPQR_ROOT)/lib/libcxsparse.a \
                  $(SPQR_ROOT)/lib/libklu.a \
                  $(SPQR_ROOT)/lib/libldl.a \
                  $(SPQR_ROOT)/lib/libsuitesparseconfig.a \
                  $(SPQR_ROOT)/lib/libumfpack.a

  LOCAL_LDLIBS += $(CLAPACK_ROOT)/SRC/liblapack.a \
                  $(CLAPACK_ROOT)/BLAS/SRC/libblas.a \
                  $(CLAPACK_ROOT)/F2CLIBS/libf2c/libf2c.a
  ```


