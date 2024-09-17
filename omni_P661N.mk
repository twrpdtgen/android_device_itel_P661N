#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from P661N device
$(call inherit-product, device/itel/P661N/device.mk)

PRODUCT_DEVICE := P661N
PRODUCT_NAME := omni_P661N
PRODUCT_BRAND := Itel
PRODUCT_MODEL := P661N
PRODUCT_MANUFACTURER := itel

PRODUCT_GMS_CLIENTID_BASE := android-itel

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_P661N-eng 99.87.36 SP2A.220405.004 eng.runner.20240731.064559 test-keys"

BUILD_FINGERPRINT := Itel/twrp_P661N/P661N:99.87.36/SP2A.220405.004/runner07310643:eng/test-keys
