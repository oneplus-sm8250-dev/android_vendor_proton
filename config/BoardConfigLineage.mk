include vendor/proton/config/BoardConfigKernel.mk
include vendor/proton/config/BoardConfigSoong.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/proton/config/BoardConfigQcom.mk
include device/qcom/common/BoardConfigQcom.mk
endif

ifeq ($(WITH_GMS),true)
include vendor/gms/products/board.mk
endif

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    vendor/proton/sepolicy/common/private
