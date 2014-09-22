#!/sbin/sh
echo "interactive" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
# change the LED pattern to something less disco
echo 2 > /sys/devices/i2c-0/0-0032/led_pattern
# busybox dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/misc conv=notrunc bs=1 count=32 seek=64
# Fix wtfe LG has aboot doing on reboot recovery
mke2fs -t ext4 /dev/block/platform/msm_sdcc.1/by-name/userdata
# wait for system to settle
#sleep 5

# Tell us that we're in postrecoveryboot.sh
echo "I:Postrecoveryboot script started!" >> /cache/recovery/log

# Clear "recovery --bnr_recovery-s" or etc flag.
busybox dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/misc conv=notrunc bs=1 count=32 seek=64

# Tell us that it worked!
echo $(mount) >> /cache/recovery/log
busybox mount /system
rm /system/app/CloudSetupWizard.apk
rm /system/app/LGVZWSetupWizard_JB.apk
echo $(mount) >> /cache/recovery/log
