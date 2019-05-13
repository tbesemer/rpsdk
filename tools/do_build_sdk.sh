#!/bin/sh

TREE_ROOT=`pwd`
if [ ! -d $TREE_ROOT/yocto/poky/build ]
then
    echo "Need to be in ~/sdk, with ~/rpsdk/yocto/poky/build"
    exit 1
fi

cd $TREE_ROOT/yocto/poky/
pwd


. ./oe-init-build-env

bitbake core-image-base -c populate_sdk
if [ $? -ne 0 ]
then
    echo "bitbake core-image-base -c populate_sdk FAILED"
    exit 1
fi

exit 0

