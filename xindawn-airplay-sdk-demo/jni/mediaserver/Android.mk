LOCAL_PATH:= $(call my-dir)


include $(CLEAR_VARS)
LOCAL_MODULE := libmediaserver

ifneq ($(filter $(NDK_KNOWN_DEVICE_ABI64S),$(TARGET_ARCH_ABI)),)

LOCAL_SRC_FILES := 64bit/libmediaserver.so
else
LOCAL_SRC_FILES := 32bit/libmediaserver.so
endif
include $(PREBUILT_SHARED_LIBRARY)



