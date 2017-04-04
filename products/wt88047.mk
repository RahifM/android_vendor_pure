# Copyright (C) 2015 The Pure-Cunt Project
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

WITH_GOOGLE_CAMERA := false
WITH_CM_CHARGER := true

# Include pure telephony configuration
include vendor/pure/configs/pure_phone.mk

# Inherit AOSP device configuration for wt88047
$(call inherit-product, device/wingtech/wt88047/aosp_wt88047.mk)

# Misc packages
PRODUCT_PACKAGES += \
    DeskClock \
    messaging \
    SoundRecorder

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

# Device identifier. This must come after all inclusions
BOARD_VENDOR := wingtech
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := wt88047
PRODUCT_NAME := wt88047
PRODUCT_MANUFACTURER := Wingtech
PRODUCT_MODEL := Redmi 2

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
