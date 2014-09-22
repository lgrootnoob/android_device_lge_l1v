#!/sbin/sh
umount /system
busybox mount -o rw /dev/block/mmcblk0p14 /system
echo "interactive" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
# Fix wtfe LG has aboot doing on reboot recovery
#mke2fs -t ext4 /dev/block/platform/msm_sdcc.1/by-name/userdata
busybox dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/misc conv=notrunc bs=1 count=32 seek=64
# Tell us that it worked!
rm -rf /system/app/CloudSetupWizard.apk
rm -rf /system/app/ChargingWallpaperPickerbin.apk
rm -rf /system/app/LGVZWSetupWizard_JB.apk
