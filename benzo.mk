# Release name
PRODUCT_RELEASE_NAME := Nexus4

# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/benzo/config/common.mk)
$(call inherit-product, vendor/benzo/config/common_full_phone.mk)

# CM Overlay
DEVICE_PACKAGE_OVERLAYS += device/moto/shamu/overlay-cm

# Setup device specific product configuration.
PRODUCT_NAME := benzo_mako
PRODUCT_BRAND := Google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=occam \
    BUILD_FINGERPRINT=google/occam/mako:6.0.1/MMB29V/2473553:user/release-keys \
    PRIVATE_BUILD_DESC="occam-user 6.0.1 MMB29V 2473553 release-keys"

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/benzo/prebuilt/common/bootanimations/bootanimation.zip:system/media/bootanimation.zip
