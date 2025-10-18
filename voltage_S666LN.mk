#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common VoltageOS stuff.
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

# Inherit from S666LN device
$(call inherit-product, device/itel/S666LN/device.mk)

BOARD_VENDOR := Itel
PRODUCT_NAME := voltage_S666LN
PRODUCT_DEVICE := S666LN
PRODUCT_MANUFACTURER := ITEL
PRODUCT_BRAND := itel
PRODUCT_MODEL := itel S666LN

PRODUCT_GMS_CLIENTID_BASE := android-transsion
PRODUCT_SYSTEM_NAME := S666LN-OP
PRODUCT_SYSTEM_DEVICE := S666LN
    
BUILD_FINGERPRINT := Itel/S666LN-OP/itel-S666LN:13/TP1A.220624.014/240513V902:user/release-keys

# Time
VOLTAGE_VERSION_APPEND_TIME_OF_DAY := true

# Bootanimation Resolution.
TARGET_BOOT_ANIMATION_RES := 720

# VoltageOS flags.
PERF_ANIM_OVERRIDE := true # MTK Fix Perf
TARGET_FACE_UNLOCK_SUPPORTED := true

# VoltageOS CPUsets configuration.
VOLTAGE_CPU_SMALL_CORES := 0,1,2,3,4,5
VOLTAGE_CPU_BIG_CORES := 6,7
VOLTAGE_CPU_UNLIMIT_UI := 0-7
VOLTAGE_CPU_BG := 0-3
VOLTAGE_CPU_FG := 0-7
VOLTAGE_CPU_LIMIT_BG := 0-2
VOLTAGE_CPU_LIMIT_UI := 0-5