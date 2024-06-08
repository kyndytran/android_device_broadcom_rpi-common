# 
#  Copyright (C) 2024 KhaTran
# 
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
# 
#       http://www.apache.org/licenses/LICENSE-2.0
# 
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm-service.clearkey \
    android.hardware.drm-service.widevine

PRODUCT_PACKAGES += \
    android.hardware.health-service.example \
    android.hardware.health.storage-service.default

# Software Keymaster
PRODUCT_PACKAGES += \
    android.hardware.security.keymint-service

# Software Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper-service
