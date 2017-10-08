# Copyright (C) 2010 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

#$(call inherit-product, device/samsung/gts210vewifi/full_gts210vewifi.mk)
# must be before including omni part
TARGET_BOOTANIMATION_SIZE := 1536p

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common_tablet.mk)

# Inherit from gts210vewifi device
$(call inherit-product, device/samsung/gts210vewifi/device.mk)

PRODUCT_NAME := omni_gts210vewifi
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_DEVICE := gts210vewifi
PRODUCT_MODEL := SM-T813

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=gts210vewifixx \
    BUILD_FINGERPRINT=samsung/gts210vewifixx/gts210vewifi:7.0/NRD90M/T813XXU2BQD3:user/release-keys \
    PRIVATE_BUILD_DESC="gts210vewifixx-user 7.0 NRD90M T813XXU2BQD3 release-keys"
