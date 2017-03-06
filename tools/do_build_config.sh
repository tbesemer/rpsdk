#!/bin/sh

TREE_ROOT=`pwd`
if [ ! -d $TREE_ROOT/conf ]
then
    echo "Need to be in ~/sdk, with ~/sdk/conf"
    exit 1
fi

if [ ! -d $TREE_ROOT/yocto/poky/build/conf ]
then
    echo "[$TREE_ROOT/yocto/poky/build/conf] does not exist"
    exit 1
fi

cat $TREE_ROOT/conf/bblayers.conf-template | awk -v rootdir="$TREE_ROOT" '{sub( "__YOCTO__", rootdir ); print }' >  $TREE_ROOT/yocto/poky/build/conf/bblayers.conf

cat $TREE_ROOT/conf/local.conf-template | awk -v rootdir="$HOME" '{sub( "__HOME__", rootdir ); print }' >  $TREE_ROOT/yocto/poky/build/conf/local.conf

exit 0

