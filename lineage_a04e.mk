#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a03s device
$(call inherit-product, device/samsung/a04e/device.mk)

PRODUCT_DEVICE := a04e
PRODUCT_NAME := lineage_a04e
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A042F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 14 AP1A.240305.019.A1 11445699 release-keys"

BUILD_FINGERPRINT := google/raven/raven:14/AP1A.240305.019.A1/11445699:user/release-keys
