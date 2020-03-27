#!/bin/sh

cmake -G Xcode -DINSTALL_EXT_DIR=$TRAVIS_BUILD_DIR/build/install-ext -DSCLANG_CMAKE_PREFIX=`brew --prefix qt5` ..

