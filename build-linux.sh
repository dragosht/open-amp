#!/bin/sh

METAL_DIR=/home/dragosh/workspace/openamp/libmetal

mkdir -p openamp-build
cd openamp-build && \
cmake .. -DCMAKE_INCLUDE_PATH=$METAL_DIR/metal-install/usr/local/include \
        -DCMAKE_LIBRARY_PATH=$METAL_DIR/metal-install/usr/local/lib \
	-DWITH_APPS=ON && \
make VERBOSE=1 DESTDIR=../openamp-install install
