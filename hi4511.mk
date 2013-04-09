# The hi4511 product that is specialized for hisilicon dev board.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/linaro/common/common.mk)
$(call inherit-product, device/linaro/hi4511/device.mk)

PRODUCT_BRAND := hi4511
PRODUCT_DEVICE := hi4511
PRODUCT_NAME := hi4511
PRODUCT_MODEL := hi4511
PRODUCT_MANUFACTURER := HiSilicon
