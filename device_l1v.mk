$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh
$(call inherit-product-if-exists, vendor/lge/l1v/l1v-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/l1v/overlay
LOCAL_PATH := device/lge/l1v

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_l1v
PRODUCT_DEVICE := l1v
