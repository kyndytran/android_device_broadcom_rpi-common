#
# Copyright (C) 2024 KhaTran
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

TARGET_NO_BOOTLOADER := true
# Use prebuilt kernel Image.gz and *.dtb
# TODO: Runtime build support
TARGET_NO_KERNEL := true
TARGET_NO_RECOVERY := true

# TODO: Support bluetooth HAL and prepare bluetooth firmware
BOARD_HAVE_BLUETOOTH := false

TARGET_COPY_OUT_VENDOR := vendor
# Use for loading fstab (fstab.${ro.boot.hardware}) and load *.so HALs and other similar purposes
BOARD_KERNEL_CMDLINE += androidboot.hardware=$(TARGET_PRODUCT)
