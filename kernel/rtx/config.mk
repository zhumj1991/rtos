rtx-target-$(CONFIG_CPU_V7M) += TARGET_CORTEX_M

KERNEL_TARGETDIR := $(rtx-target-y)

CC_SYMBOLS += -DTOOLCHAIN_GCC
CC_SYMBOLS += -D__CORTEX_M4F

INCLUDE_PATHS += -I$(srctree)/$(KERNELDIR)/arch/$(KERNEL_TARGETDIR)
INCLUDE_PATHS += -I$(srctree)/$(KERNELDIR)/kernel