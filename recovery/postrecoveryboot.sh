#!/sbin/sh
busybox mount /cache
busybox mount /system
echo "interactive" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
# change the LED pattern to something less disco
echo 2 > /sys/devices/i2c-0/0-0032/led_pattern
# busybox dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/misc conv=notrunc bs=1 count=32 seek=64
# Fix wtfe LG has aboot doing on reboot recovery
mke2fs -t ext4 /dev/block/platform/msm_sdcc.1/by-name/userdata
busybox dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/misc conv=notrunc bs=1 count=32 seek=64
# Tell us that it worked!
rm /system/app/CloudSetupWizard.apk
rm /system/app/ChargingWallpaperPickerbin.apk
rm /system/app/LGVZWSetupWizard_JB.apk
echo $(mount) >> /cache/recovery/log
