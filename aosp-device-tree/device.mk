#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Rootdir
PRODUCT_PACKAGES += \
    init.mdm.sh \
    init.qcom.sensors.sh \
    init.qcom.post_boot.sh \
    capture_headset.sh \
    capture_1adc.sh \
    init.qti.dcvs.sh \
    init.mi.usb.sh \
    mishow.sh \
    playback_headset.sh \
    setup_headsetmic2headphone.sh \
    setup_topmic2headphone.sh \
    qca6234-service.sh \
    setup_mainmic2headphone.sh \
    init.qcom.class_core.sh \
    teardown_loopback.sh \
    init.qcom.early_boot.sh \
    init.qcom.usb.sh \
    init.class_main.sh \
    init.qcom.sh \
    xmirtest.sh \
    init.qcom.coex.sh \
    ir_test.sh \
    playback.sh \
    init.qcom.sdio.sh \
    init.crda.sh \
    init.qcom.efs.sync.sh \
    init.qti.chg_policy.sh \
    headsetstate.sh \
    init.qti.qcv.sh \
    install-recovery.sh \
    capture.sh \

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.factory.rc \
    init.qcom.usb.rc \
    init.qcom.rc \
    init.target.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 30

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/vayu/vayu-vendor.mk)
