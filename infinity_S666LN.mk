#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common MistOS stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Build flags
WITH_GAPPS := true
INFINITY_BUILD_TYPE := UNOFFICIAL
TARGET_BOOTANIMATION := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_PICO_GAPPS := true
TARGET_BUILD_APERTURE_CAMERA := true
INFINITY_MAINTAINER := "attack_dns24"
TARGET_BUILD_GOOGLE_TELEPHONY := true
USE_MOTO_CALCULATOR := true

# Inherit from S666LN device
$(call inherit-product, device/itel/S666LN/device.mk)

BOARD_VENDOR := Itel
PRODUCT_NAME := infinity_S666LN
PRODUCT_DEVICE := S666LN
PRODUCT_MANUFACTURER := ITEL
PRODUCT_BRAND := Itel
PRODUCT_MODEL := itel S666LN

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sys_tssi_64_armv82_itel-user 13 TP1A.220624.014 607469 release-keys" \
    BuildFingerprint=Itel/S666LN-OP/itel-S666LN:13/TP1A.220624.014/240513V1350:user/release-keys \
    DeviceProduct=S666LN-OP \
    DeviceName=itel-S666LN