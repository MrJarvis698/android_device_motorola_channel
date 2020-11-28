#
# Copyright (C) 2019 The LineageOS Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common AOSP stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from channel device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_VENDOR_PROPERTY_BLACKLIST := \
    ro.telephony.default_network \
    ro.vendor.telephony.default_network

# Use GApps
TARGET_GAPPS_ARCH := arm64

# Bootanimation RES
TARGET_BOOT_ANIMATION_RES := 720

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := channel
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := aosp_channel
PRODUCT_MODEL := moto g(7) play

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=channel \
        PRIVATE_BUILD_DESC="channel-user 9 PPY29.148-140 687ae release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys
