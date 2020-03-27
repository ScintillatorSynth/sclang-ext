#!/bin/bash

mkdir -p $TRAVIS_BUILD_DIR/build/install-ext
cmake -DINSTALL_EXT_DIR=$TRAVIS_BUILD_DIR/build/install-ext ..


