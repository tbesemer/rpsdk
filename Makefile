all:	os_base

.PHONEY: os_base
os_base:
	tools/do_meta_pull.sh
	tools/do_build_config.sh
	tools/do_build.sh

.PHONEY: os_image
os_image:
	tools/do_meta_pull.sh
	tools/do_build_config.sh
	tools/do_build_image.sh

.PHONEY: os_sdk
os_sdk:
	tools/do_meta_pull.sh
	tools/do_build_config.sh
	tools/do_build_sdk.sh

.PHONEY: help
help:
	@echo "Make Targets:"
	@echo ""
	@echo " os_base:     Images and SDK"
	@echo " os_image:    Images"
	@echo " os_sdk:      SDK"
	@echo ""

