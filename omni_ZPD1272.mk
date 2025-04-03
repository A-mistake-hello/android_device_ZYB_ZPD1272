#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from ZPD1272 device
$(call inherit-product, device/zyb/ZPD1272/device.mk)

PRODUCT_DEVICE := ZPD1272
PRODUCT_NAME := omni_ZPD1272
PRODUCT_BRAND := ZYB
PRODUCT_MODEL := ZPD1272
PRODUCT_MANUFACTURER := zyb

PRODUCT_GMS_CLIENTID_BASE := android-zyb

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_ZPD1272-user 12 SP1A.210812.016 734_735-42 release-keys"

BUILD_FINGERPRINT := ZYB/vnd_ZPD1272/ZPD1272:12/SP1A.210812.016/734_735-42:user/release-keys
