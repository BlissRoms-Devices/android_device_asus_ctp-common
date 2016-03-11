
ifneq ($(filter Z00A Z008 A500CG A600CG A400CG,$(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := librecovery_updater_mofd
LOCAL_SRC_FILES := recovery_updater.c fw_version_check.c
LOCAL_C_INCLUDES += bootable/recovery

include $(BUILD_STATIC_LIBRARY)

endif
