#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=$(pwd)/../prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-

make zImage -j4

make uImage -j4

make modules
