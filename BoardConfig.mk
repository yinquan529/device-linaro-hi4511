# config.mk
# 
# Product-specific compile-time definitions.
#

TARGET_BOARD_PLATFORM := hi4511
TARGET_NO_BOOTLOADER := true # We use our own methods for building bootloaders
TARGET_NO_KERNEL := false

TARGET_USE_XLOADER := false
TARGET_USE_UBOOT := false
TARGET_NO_RECOVERY := true
TARGET_NO_RADIOIMAGE := true
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := false
PREBUILT_MKBOOTIMG := vendor/hisilicon/mkbootimg_hisilicon
HARDWARE_OMX := false
USE_CAMERA_STUB := false
BOARD_KERNEL_BASE := 0x00000000
TARGET_HAS_DEVICETREE := true
TARGET_TAG_ADDRESS := 0x01100000
BOARD_KERNEL_CMDLINE := mem=1024M console=ttyAMA0,115200 vmalloc=128M k3v2_pmem=0 mmcparts=mmcblk0:p1(xloader),p3(nvme),p4(misc),p5(splash),p6(oeminfo),p7(reserved1),p8(reserved2),p9(recovery2),p10(recovery),p11(boot),p12(modemimage),p13(modemnvm1),p14(modemnvm2),p15(system),p16(cache),p17(cust),p18(userdata);mmcblk1:p1(ext_sdcard) androidboot.hardware=hisiliconhi4511 androidboot.serialno=0123456789ABCDEF

BOARD_HAVE_BLUETOOTH := false

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9

TARGET_ARCH := arm
# Enable NEON feature
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

EXTRA_PACKAGE_MANAGEMENT := false

TARGET_CPU_SMP := true

KERNEL_CONFIG := arch/arm/configs/hs_defconfig \
                 linaro/configs/android.conf
ifneq ($(wildcard $(TOPDIR)kernel/linaro/hisilicon/),)
TARGET_KERNEL_SOURCE = kernel/linaro/hisilicon/ 
else
TARGET_KERNEL_SOURCE = kernel/linaro/hisilicon-open
endif
BUILD_KERNEL_MODULES := false
DEVICE_TREES := hi4511:hi4511.dtb
INSTALLED_KERNEL_TARGET_NAME := kernel
INSTALLED_DTB_TARGET_NAME := hi4511.dtb
INSTALLED_RAMDISK_TARGET_NAME := ramdisk.img
INCLUDE_PERF := 0

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 432013312
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5368709120
BOARD_FLASH_BLOCK_SIZE := 4096
