# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

# Inherit some common EV stuff.
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_raven_64.mk)
$(call inherit-product, device/google/raviole/device-ev.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := ev_raven
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_BRAND := google

PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.uwb.calibration.calibrationpaths=/vendor/etc/calib_paths

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=raven \
    PRIVATE_BUILD_DESC="raven-user 12 SP2A.220405.004 8233519 release-keys"

BUILD_FINGERPRINT := google/raven/raven:12/SP2A.220405.004/8233519:user/release-keys

$(call inherit-product, vendor/google/raven/raven-vendor.mk)
