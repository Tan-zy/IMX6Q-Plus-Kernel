export ARCH=arm
export CROSS_COMPILE=arm-none-linux-gnueabi-

make imx_v7_linux_defconfig
#make imx_v7_android_defconfig

make uImage LOADADDR=0x10008000 KCFLAGS=-mno-android

make modules LOADADDR=0x10008000 KCFLAGS=-mno-android

make dtbs LOADADDR=0x10008000 KCFLAGS=-mno-android

cp arch/arm/boot/zImage /mnt/hgfs/share/
cp arch/arm/boot/dts/imx6qp-topeet.dtb /mnt/hgfs/share/

