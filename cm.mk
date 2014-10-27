## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := l1v

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/l1v/device_l1v.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := l1v
PRODUCT_NAME := cm_l1v
PRODUCT_BRAND := lge
PRODUCT_MODEL := l1v
PRODUCT_MANUFACTURER := lge
