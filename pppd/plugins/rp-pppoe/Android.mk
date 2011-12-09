
ifeq ($(TARGET_ARCH),arm)

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	common.c \
	debug.c \
	discovery.c \
	if.c

LOCAL_C_INCLUDES += external/ppp/pppd/include
LOCAL_MODULE := libplugin
LOCAL_MODULE_TAGS := optional
include $(BUILD_STATIC_LIBRARY)


include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
    pppoe-discovery.c

LOCAL_C_INCLUDES += external/ppp/pppd/include
LOCAL_STATIC_LIBRARIES := libplugin
LOCAL_MODULE := pppoe-discovery
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	plugin.c

LOCAL_PRELINK_MODULE := false
LOCAL_C_INCLUDES += external/ppp/pppd/include external/ppp
LOCAL_STATIC_LIBRARIES := libplugin
LOCAL_SHARED_LIBRARIES := \
	libcutils libcrypto libdl libpppd
LOCAL_MODULE := rp-pppoe
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/ppp/2.4.3
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)


endif
