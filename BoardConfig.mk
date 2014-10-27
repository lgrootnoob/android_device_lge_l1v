USE_CAMERA_STUB := true
# inherit from the proprietary version
# -include vendor/lge/l1v/BoardConfigVendor.mk
# No prop vendor tree avail
# TARGET_TOOLS_PREFIX := /home/jacob/Desktop/cyan/prebuilts/gcc/linux-x86/arm/arm-eabi-4.7/bin/arm-eabi-
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
RECOVERY_FSTAB_VERSION = 2
TARGET_POWERHAL_VARIANT := cm
TARGET_ARCH := arm
TARGET_ARCH_VARIANT_FPU := vfpv4
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8960
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
# TARGET_USE_O3 := true
TARGET_PROVIDES_LIBLIGHTS := true
TARGET_BOOTLOADER_BOARD_NAME := l1v
BOARD_USES_QCOM_HARDWARE := true
USE_OPENGL_RENDERER := true
TARGET_NO_HW_VSYNC := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
ENABLE_LOKI_RECOVERY := true
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=l1v lpj=67667 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64
BOARD_BOOTIMAGE_PARTITION_SIZE := 50331648
# cat /proc/partitions*block size so for recovery mmcblk0p19 is 12288*4096
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 50331648
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 7717519360
BOARD_USERDATAIMAGE_PARTITION_SIZE := 17089830912
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USES_ADRENO_200 := true
TARGET_QCOM_DISPLAY_VARIANT := caf
BOARD_EGL_NEEDS_LEGACY_FB := true
# Let it find target kernel source by itself
# However, still specify config.
TARGET_BOOTANIMATION_NAME := vertical-540x960
BOARD_USES_SECURE_SERVICES := true

# Wifi
#WPA_SUPPLICANT_VERSION := VER_0_8_X
#BOARD_WPA_SUPPLICANT_DRIVER	:= NL80211
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
#BOARD_HOSTAPD_DRIVER := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
#BOARD_WLAN_DEVICE := bcmdhd
#WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
#WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/fw_bcmdhd.bin"
#WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/fw_bcmdhd_apsta.bin"
#WIFI_DRIVER_FW_PATH_P2P := "/system/etc/firmware/fw_bcmdhd_p2p.bin"

# Audio
TARGET_USES_ION_AUDIO := true
BOARD_USES_ALSA_AUDIO := true

# Recovery
TARGET_RECOVERY_FSTAB := device/lge/l1v/fstab.l1v
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
ENABLE_LOKI_RECOVERY := true

# SELinux
BOARD_SEPOLICY_UNION := \
app.te \
bluetooth.te \
device.te \
domain.te \
drmserver.te \
file.te \
file_contexts \
hci_init.te \
init_shell.te \
keystore.te \
mediaserver.te \
kickstart.te \
nfc.te \
rild.te \
surfaceflinger.te \
system.te \
ueventd.te \
wpa.te

# Kernel
TARGET_KERNEL_SOURCE := kernel/lge/l1v
TARGET_KERNEL_CONFIG := l1v-cyanogenmod_defconfig

#twrp
DEVICE_RESOLUTION := 540x960
TW_NO_REBOOT_BOOTLOADER := true
TW_DEFAULT_EXTERNAL_STORAGE := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
