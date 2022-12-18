#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 720

# Inherit some common evolution stuff
$(call inherit-product, vendor/xtended/config/common_full_phone.mk)

# Inherit from rova device
$(call inherit-product, device/xiaomi/rova/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := rova
PRODUCT_NAME := xtended_rova
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 4A / 5A
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Xtended Stuffs
XTENDED_BUILD_MAINTAINER := xyz_abhishek
XTENDED_BUILD_TYPE := UNOFFICIAL
WITH_GAPPS := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_BLUR := false
TARGET_SHIP_GCAM_GO := true
