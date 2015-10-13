$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/Coolpad/8675A/8675A-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/Coolpad/8675A/overlay

LOCAL_PATH := device/Coolpad/8675A

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/Coolpad/8675A/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
	$(LOCAL_PATH)/dt.img:dt.img

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_8675A
PRODUCT_DEVICE := 8675A
