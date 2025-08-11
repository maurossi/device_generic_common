#
# Copyright (C) 2011-2017 The Android-x86 Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#

PRODUCT_PACKAGES := \
    amdgpu.ids \
    hwcomposer.drm hwcomposer.drm_minigbm \
    gralloc.gbm gralloc.gbm_stride gralloc.minigbm \
    libGLES_mesa libgallium_dri libglapi dri_gbm \
    libtxc_dxtn     \

PRODUCT_PACKAGES += \
    libEGL_swiftshader libEGL_angle \
    libGLESv1_CM_swiftshader libGLESv1_CM_angle \
    libGLESv2_swiftshader libGLESv2_angle libfeature_support_angle \
    vulkan.android-x86 vulkan.intel vulkan.intel_hasvk \
    vulkan.radv vulkan.radeon vulkan.nouveau vulkan.pastel

PRODUCT_PROPERTY_OVERRIDES := \
    ro.opengles.version = 196608 \
    ro.hardware.vulkan.level = 1 \
    ro.hardware.vulkan.version = 4194307

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:system/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:system/etc/permissions/android.hardware.vulkan.version.xml
