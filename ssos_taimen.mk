# Boot animation
TARGET_SCREEN_HEIGHT := 2880
TARGET_SCREEN_WIDTH := 1440

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/ssos/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

-include device/google/taimen/device-lineage.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := ssos_taimen
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2 XL
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    PRIVATE_BUILD_DESC="google/raven/raven:12/SQ1D.220205.003/8069835:user/release-keys"

BUILD_FINGERPRINT := google/raven/raven:12/SQ1D.220205.003/8069835:user/release-keys

$(call inherit-product, vendor/google/taimen/taimen-vendor.mk)

# ShapeShiftOS stuff
 PRODUCT_PRODUCT_PROPERTIES += \
   ro.ssos.cpu=SD835

 #SSOS_BUILD_TYPE := OFFICIAL
 TARGET_FACE_UNLOCK_SUPPORTED := false
 TARGET_BOOT_ANIMATION_RES := 1080
 TARGET_USES_BLUR := true
 EXTRA_FOD_ANIMATIONS := false