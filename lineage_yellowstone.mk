#
# Copyright (C) 2014 The Android Open-Source Project
# Copyright (C) 2018 Tegra Development
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

$(call inherit-product, device/google/yellowstone/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

aPRODUCT_NAME := lineage_yellowstone
PRODUCT_DEVICE := yellowstone
PRODUCT_BRAND := google
PRODUCT_MODEL := Project Tango Tablet Development Kit
PRODUCT_MANUFACTURER := Google

# Boot Animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200

# Device Fingerprint
BUILD_FINGERPRINT := google/tango/yellowstone:4.4.2/KOT49H.161129/161129002:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=tango \
    PRIVATE_BUILD_DESC="ardbeg-user 4.4.2 KOT49H.161129 161129002 release-keys"

# Inherit Proprietary Vendor Blobs
$(call inherit-product, vendor/google/yellowstone/yellowstone-vendor.mk)
