LOCAL_PATH := device/nokia/WSP_sprout

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root) \
        $(LOCAL_PATH)/prebuilt/dtb.img:dtb.img

# A/B
AB_OTA_PARTITIONS += \
    boot \
    custom \
    dtbo \
    elabel \
    lk \
    md1img \
    preloader \
    scp \
    spmfw \
    sspm \
    system \
    tee \
    vbmeta \
    vendor \

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl \
    android.hardware.boot@1.1-service

#PRODUCT_STATIC_BOOT_CONTROL_HAL := \
#    bootctrl.mt6761 \
#    libgptutils \
#    libz \
#    libcutils

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload
