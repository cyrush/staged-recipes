#!/bin/bash

# Setup CMake build location
rm -rf build
mkdir build
cd build

# configure with cmake
# this should pick up python
cmake -DCMAKE_INSTALL_PREFIX="${PREFIX}"\
      -DENABLE_PYTHON=ON \
      -DPYTHON_MODULE_INSTALL_PREFIX="${SP_DIR}"\
      -DHDF5_DIR=${CONDA_PREFIX} \
      ../src

# build, test, and install
make
make test
make install
