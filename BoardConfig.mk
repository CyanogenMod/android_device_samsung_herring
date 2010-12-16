USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/herring/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := herring

BOARD_KERNEL_CMDLINE := console=ttyFIQ0 no_console_suspend
BOARD_KERNEL_BASE := 0x30000000
BOARD_PAGE_SIZE := 0x00001000

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00380000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00480000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/samsung/herring/kernel

BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p1
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_DATA_DEVICE := /dev/block/mmcblk0p2
BOARD_DATA_FILESYSTEM := ext4
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk0p3
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk0p3
BOARD_SDEXT_DEVICE := /dev/block/mmcblk0p4

BOARD_HAS_NO_SELECT_BUTTON := true

# Below is a sample of how you can tweak the mount points using the board config.
# This is for the Samsung Galaxy S.
# Feel free to tweak or remove this code.
# If you want to add/tweak a mount point, the BOARD_X_FILESYSTEM_OPTIONS are optional.
#BOARD_DATA_FILESYSTEM_OPTIONS := llw,check=no,nosuid,nodev
#BOARD_HAS_DATADATA := true
#BOARD_DATADATA_DEVICE := /dev/block/stl10
#BOARD_DATADATA_FILESYSTEM := auto
#BOARD_DATADATA_FILESYSTEM_OPTIONS := llw,check=no,nosuid,nodev
#BOARD_SYSTEM_DEVICE := /dev/block/stl9
#BOARD_SYSTEM_FILESYSTEM := auto
#BOARD_SYSTEM_FILESYSTEM_OPTIONS := llw,check=no
#BOARD_CACHE_DEVICE := /dev/block/stl11
#BOARD_CACHE_FILESYSTEM := auto
#BOARD_CACHE_FILESYSTEM_OPTIONS := llw,check=no,nosuid,nodev
#BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
