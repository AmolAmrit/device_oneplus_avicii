#
# Copyright (C) 2018 The LineageOS Project
# Copyright (C) 2021 The Aosp Extended Project
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

# Inherit from avicii device
$(call inherit-product, device/oneplus/avicii/device.mk)

# Inherit some common AospExtended stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Aosp Extended Properties
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_AOSP_RECOVERY := true
EXTRA_FOD_ANIMATIONS := true

PRODUCT_NAME := aosp_avicii
PRODUCT_DEVICE := avicii
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := AC2001

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

# Build info
BUILD_FINGERPRINT := "OnePlus/Nord/Nord:11/RP1A.201005.001/2108131839:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=avicii \
    PRODUCT_NAME=aosp_avicii \
    PRIVATE_BUILD_DESC="Nord-user 11 RP1A.201005.001 2108131839 release-keys"
