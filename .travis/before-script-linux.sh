#!/bin/bash

mkdir -p $TRAVIS_BUILD_DIR/build/install-ext

source /opt/qt59/bin/qt59-env.sh
cmake -DINSTALL_EXT_DIR=$TRAVIS_BUILD_DIR/build/install-ext ..


