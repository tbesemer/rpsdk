LICENSE = "Proprietary"

IMAGE_INSTALL_append = " mtd-utils openssh u-boot-fw-utils util-linux libconfig proftpd swupdate readline"
DISTRO_FEATURES_append = " systemd"

# Packages to include in the standalone toolchain
#TOOLCHAIN_TARGET_TASK_append = " boost"
