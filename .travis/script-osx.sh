#!/bin/sh

XCPRETTY='xcpretty --simple --no-utf --no-color'

cmake --build . | $XCPRETTY
cmake --install . | $XCPRETTY

