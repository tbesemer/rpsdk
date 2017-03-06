#@!/bin/sh

TREE_ROOT=`pwd`
if [ ! -d$TREE_ROOT/yocto ]
then
    echo "Need to be in ~/rpisdk, with ~/rpisdk/yocto."
    exit 1
fi

cd $TREE_ROOT/yocto
if [ $? -ne 0 ]
then
    echo "Can't CD into $TREE_ROOT/yocto"
    exit 1

fi

if [ ! -d poky ]
then
    git clone -b morty git://git.yoctoproject.org/poky.git
fi


if [ ! -d meta-openembedded ]
then
    git clone -b morty https://github.com/openembedded/meta-openembedded.git
fi

if [ ! -d meta-raspberrypi ]
then
    git clone -b morty https://github.com/agherzan/meta-raspberrypi.git
fi

if [ ! -d meta-libuvc ]
then
    git clone https://github.com/tbesemer/meta-libuvc.git
fi

cd poky; . ./oe-init-build-env
cd $CWD
 
exit 0
