#
# Copyright (C) 2022 Nitrog-OS
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

BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
DISABLE_DEXPREOPT_CHECK := true

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image.lz4
TARGET_KERNEL_CONFIG := slider_gki_defconfig
TARGET_KERNEL_SOURCE := kernel/google/gs101/private/gs-google
TARGET_NEEDS_DTBOIMAGE := true

# Kernel modules
BOARD_VENDOR_KERNEL_MODULES_BLOCKLIST_FILE := device/google/gs101/vendor_dlkm.modules.blocklist
TARGET_KERNEL_EXT_MODULE_ROOT := kernel/google/gs101/private/google-modules

# Verified Boot
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

# Reserve space for gapps install
BOARD_PRODUCTIMAGE_EXTFS_INODE_COUNT := -1
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 614400000
BOARD_SYSTEMIMAGE_EXTFS_INODE_COUNT := -1
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 1752350720
BOARD_SYSTEM_EXTIMAGE_EXTFS_INODE_COUNT := -1
BOARD_SYSTEM_EXTIMAGE_PARTITION_RESERVED_SIZE := 92160000