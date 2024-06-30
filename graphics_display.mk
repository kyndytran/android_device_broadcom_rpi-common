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

# Mesa graphics configuration from external/mesa3d
BOARD_MESA3D_USES_MESON_BUILD := true
BOARD_MESA3D_GALLIUM_DRIVERS := vc4 v3d
BOARD_MESA3D_BUILD_LIBGBM := true
BOARD_MESA3D_VULKAN_DRIVERS := broadcom
# Enable Vulkan backend for SKIA/HWUI
TARGET_USES_VULKAN = true

PRODUCT_PACKAGES += \
    libEGL_mesa \
    libGLESv1_CM_mesa \
    libGLESv2_mesa \
    libgallium_dri \
    libglapi

# Vulkan
PRODUCT_PACKAGES += \
    vulkan.broadcom

# Allocator/Mapper 4.0 from external/minigbm
# TODO: Support dmabuf allocator/mapper 4.0 which directly uses
# linux,cma heap. It seems better to handle memory/buffers than
# minigbm_gbm_mesa.
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@4.0-service.minigbm_gbm_mesa \
    android.hardware.graphics.mapper@4.0-impl.minigbm_gbm_mesa \
    libgbm_mesa_wrapper

# hwcomposer3 - display HAL
# TODO: Clone and make our own hwc3 HAL. Do NOT depend
# on goldfish-opengl namespace and marcos anymore
PRODUCT_SOONG_NAMESPACES += device/generic/goldfish-opengl
BUILD_EMULATOR_OPENGL := true
BUILD_EMULATOR_OPENGL_DRIVER := true
ENABLE_GOLDFISH_OPENGL_FOLDER := true

PRODUCT_PACKAGES += \
    android.hardware.graphics.composer3-service.ranchu
