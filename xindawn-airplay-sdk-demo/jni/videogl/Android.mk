LOCAL_PATH:= $(call my-dir)


include $(CLEAR_VARS)
LOCAL_MODULE := libmediaplayergl
ifneq ($(filter $(NDK_KNOWN_DEVICE_ABI64S),$(TARGET_ARCH_ABI)),)
LOCAL_SRC_FILES := 64bit/libmediaplayergl.so
else
LOCAL_SRC_FILES := 32bit/libmediaplayergl.so
endif
include $(PREBUILT_SHARED_LIBRARY)



