## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := 8675A

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/Coolpad/8675A/device_8675A.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := 8675A
PRODUCT_NAME := cm_8675A
PRODUCT_BRAND := Coolpad
PRODUCT_MODEL := 8675A
PRODUCT_MANUFACTURER := Coolpad
