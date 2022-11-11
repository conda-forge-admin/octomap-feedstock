#!/bin/sh

mkdir build
cd build

cmake ${CMAKE_ARGS} .. \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_PREFIX_PATH=$PREFIX \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DBUILD_SHARED_LIBS=ON \
      -DBUILD_OCTOVIS_SUBPROJECT=OFF \
      -DBUILD_DYNAMICETD3D_SUBPROJECT=OFF \
      -DCMAKE_INSTALL_LIBDIR=lib

make -j${CPU_COUNT}
make install
