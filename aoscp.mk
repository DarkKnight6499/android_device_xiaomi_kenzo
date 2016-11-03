# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common product files.
$(call inherit-product, vendor/aoscp/configs/common_full_phone.mk)

# Inherit from kenzo device
$(call inherit-product, device/xiaomi/kenzo/device.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := kenzo
PRODUCT_NAME := aoscp_kenzo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi Note 3 Pro
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Boot animation
 TARGET_SCREEN_HEIGHT := 1920
 TARGET_SCREEN_WIDTH := 1080

# Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Xiaomi/kenzo/kenzo:6.0.1/MMB29M/6.7.21:user/release-keys \
    PRIVATE_BUILD_DESC="kenzo-user 6.0.1 MMB29M 6.7.21 release-keys"
endif
