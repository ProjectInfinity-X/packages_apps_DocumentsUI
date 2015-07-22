LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_STATIC_JAVA_LIBRARIES := android-support-v4 \
    android-support-v7-recyclerview \
    guava

LOCAL_PACKAGE_NAME := DocumentsUI
LOCAL_CERTIFICATE := platform

include $(BUILD_PACKAGE)

include $(LOCAL_PATH)/tests/Android.mk
