libc_bionic_src_files_arm += \
    arch-arm/bionic/memchr.v7a.S \
    bionic/__memcpy_chk.cpp \
    arch-arm/bionic/memcpy.neon.S \
    arch-arm/cortex-a15/bionic/memset.S \
    arch-arm/cortex-a15/bionic/strcat.S \
    arch-arm/cortex-a15/bionic/__strcat_chk.S \
    arch-arm/cortex-a15/bionic/strcmp.S \
    arch-arm/cortex-a15/bionic/strcpy.S \
    arch-arm/cortex-a15/bionic/__strcpy_chk.S \
    arch-arm/cortex-a15/bionic/strlen.S \
    bionic/memmove.c \

# Optimization not required for some targets
ifeq ($(TARGET_CPU_MEMCPY_OPT_DISABLE),true)
libc_bionic_src_files_arm += \
    arch-arm/cortex-a7/bionic/memcpy.S
else
libc_bionic_src_files_arm += \
    arch-arm/bionic/memchr.v7a.S
endif
