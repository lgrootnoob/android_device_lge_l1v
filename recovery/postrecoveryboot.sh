#!/sbin/sh
umount /system
umount /external_sd
busybox mount -o rw /dev/block/mmcblk0p14 /system
busybox mount -o rw /dev/block/platform/msm_sdcc.3/by-num/p1 /external_sd
echo "interactive" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
#mke2fs -t ext4 /dev/block/platform/msm_sdcc.1/by-name/userdata
<<<<<<< HEAD
if [ ! -f /external_sd/userdata.img ]; then
	dd if=/dev/zero of=/external_sd/userdata.img bs=512 count=3906250
	mke2fs -F -t ext4 /external_sd/userdata.img
fi
=======
#if [ ! -f /external_sd/userdata.img ]; then
#	dd if=/dev/zero of=/external_sd/userdata.img bs=512 count=3906250
#	mke2fs -F -t ext4 /external_sd/userdata.img
#fi
>>>>>>> 5ffa58d... add twrp stuff
busybox dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/misc conv=notrunc bs=1 count=32 seek=64
# Deneuter sim requirement from roms.
rm -rf /system/app/CloudSetupWizard.apk
rm -rf /system/app/ChargingWallpaperPickerbin.apk
rm -rf /system/app/LGVZWSetupWizard_JB.apk
sync
umount /system
