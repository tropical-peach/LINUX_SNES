cmd_kernel/config_data.gz := (cat /home/steven/Desktop/LINUX_SNES/build/linux/kernel/xlnx-3.17/.config | gzip -n -f -9 > kernel/config_data.gz) || (rm -f kernel/config_data.gz ; false)
