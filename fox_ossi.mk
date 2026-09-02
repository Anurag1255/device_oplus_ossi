#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit OrangeFox configuration
$(call inherit-product-if-exists, vendor/fox/config/common.mk)

# Inherit from ossi device
$(call inherit-product, device/oplus/ossi/device.mk)

PRODUCT_NAME := fox_ossi
PRODUCT_DEVICE := ossi
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := Nord CE 2 Lite 5G
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

# OrangeFox specific props
PRODUCT_PROPERTY_OVERRIDES += \
    ro.orangefox.target=ossi \
    ro.orangefox.maintainer=Antigravity

PRODUCT_BUILD_VENDOR_BOOT_IMAGE := true
