# Copyright (C) 2017 The Android Open Source Project
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

LOCAL_PATH := $(call my-dir)

# Make the HAL library
# ============================================================
include $(CLEAR_VARS)

LOCAL_CFLAGS := -Wall -Wextra -Werror

LOCAL_C_INCLUDES += \
	$(call include-path-for, libhardware_legacy)/hardware_legacy \


LOCAL_SRC_FILES := \
	info.cpp \
	interface.cpp \
	netlink.cpp \
	netlinkmessage.cpp \
	wifi_hal.cpp \


LOCAL_MODULE := libwifi-hal-emu
LOCAL_PROPRIETARY_MODULE := true

include $(BUILD_STATIC_LIBRARY)

