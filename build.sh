#!/bin/bash

export PATH=${PATH}:/mnt/samba/Linux/lib/tools/aarch64/12/arm-gnu-toolchain-12.3.rel1-aarch64-aarch64-none-elf/bin

make ARCH=arm64 CROSS_COMPILE=aarch64-none-elf- mys_g2lx_defconfig || exit

make ARCH=arm64 CROSS_COMPILE=aarch64-none-elf- -j8

ls -alh arch/arm64/boot/Image

ls -alh arch/arm64/boot/dts/myir/mys-rzg2l-sdcard.dtb
ls -alh arch/arm64/boot/dts/myir/mys-rzg2l-wifi.dtb

cp arch/arm64/boot/Image \
    arch/arm64/boot/dts/myir/mys-rzg2l-sdcard.dtb \
    arch/arm64/boot/dts/myir/mys-rzg2l-wifi.dtb \
    ../boot
