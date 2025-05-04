# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk) # vab加载到vendor boot里使用

# Inherit from TWRP product configuration
$(call inherit-product, vendor/twrp/config/common.mk) # twrp-9分支改为onmi

# Device specific configs
$(call inherit-product, device/zyb/tb8786p1_64_k510_wifi/device.mk)

# Device identifier
PRODUCT_DEVICE := tb8786p1_64_k510_wifi # 设备型号
PRODUCT_NAME := omni_tb8786p1_64_k510_wifi # 设备名称
PRODUCT_BRAND := zyb # 自定义品牌，如果有
PRODUCT_MODEL := tb8786p1_64_k510_wifi # 产品最终用户可见名称
PRODUCT_MANUFACTURER := zyb # 制造商

PRODUCT_PROPERTY_OVERRIDES += ro.twrp.vendor_boot=true

PRODUCT_GMS_CLIENTID_BASE := android-zyb

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_tb8786p1_64_k510_wifi-user 12 SP1A.210812.016 734_735-42 release-keys"

BUILD_FINGERPRINT := ZYB/vnd_tb8786p1_64_k510_wifi/tb8786p1_64_k510_wifi:12/SP1A.210812.016/734_735-42:user/release-keys
