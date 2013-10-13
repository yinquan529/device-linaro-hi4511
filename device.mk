PRODUCT_COPY_FILES := \
    device/linaro/hi4511/fstab.partitions:root/fstab.hisiliconhi4511 \
    device/linaro/hi4511/vold.fstab:system/etc/vold.fstab \
    device/linaro/hi4511/egl.cfg:system/lib/egl/egl.cfg

PRODUCT_COPY_FILES += \
    device/linaro/hi4511/init.hisiliconhi4511.rc:root/init.hisiliconhi4511.rc \
    device/linaro/hi4511/ueventd.hisiliconhi4511.rc:root/ueventd.hisiliconhi4511.rc \
    device/linaro/hi4511/init.hi4511.sh:system/etc/init.hi4511.sh \
    device/linaro/hi4511/initlogo.rle:root/initlogo.rle

PRODUCT_CHARACTERISTICS := tablet,nosdcard

DEVICE_PACKAGE_OVERLAYS := \
    device/linaro/hi4511/overlay

PRODUCT_PROPERTY_OVERRIDES += \
        ro.nohardwaregfx = true \
        debug.sf.no_hw_vsync = 1

PRODUCT_PROPERTY_OVERRIDES += \
        ro.sf.lcd_density=320
        ro.disablesuspend=true

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
        ro.hardware = hisiliconhi4511

PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product-if-exists, external/linaro-android-kernel-test/product.mk)
$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)
