DESCRIPTION = "A barebones image that contains a small package set to \
boot up. It is intended as a starting point for product development."

LICENSE = "MIT"

require recipes-core/images/core-image-minimal.bb
require tbos-packages.bb
require image-common.bb

