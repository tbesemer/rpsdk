
.PHONEY: os_base
os_base:
	tools/do_meta_pull.sh
	tools/do_build_config.sh
	tools/do_build.sh
