#
# Copyright (C) 2017 The LineageOS Open Source Project
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

# Inherit from dumpling device
$(call inherit-product, device/oneplus/dumpling/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_dumpling
PRODUCT_DEVICE := dumpling
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := ONEPLUS A5010

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_SYSTEM_DEVICE := OnePlus5T
PRODUCT_SYSTEM_NAME := OnePlus5T

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus5T \
    TARGET_PRODUCT=OnePlus5T

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus5T-user 10 QKQ1.191014.012 2010292059 release-keys"

BUILD_FINGERPRINT := OnePlus/OnePlus5T/OnePlus5T:10/QKQ1.191014.012/2010292059:user/release-keys

TARGET_VENDOR := oneplus

# Rice stuff

RICE_MAINTAINER := forkbomb9
RICE_CHIPSET := msm8998
SUSHI_BOOTANIMATION := 1080
TARGET_BUILD_GRAPHENEOS_CAMERA := true
TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.fw.bg_apps_limit?=48 \
    persist.sys.fw.use_trim_settings?=true \
    persist.sys.fw.empty_app_percent?=50 \
    persist.sys.fw.trim_empty_percent?=100 \
    persist.sys.fw.trim_cache_percent?=100 \
    persist.sys.fw.trim_enable_memory?=2147483648 \
    persist.sys.fw.bservice_age?=120000 \
    persist.sys.fw.bservice_limit?=6 \
    persist.sys.fw.bservice_enable?=true
