#
# Regular cron jobs for the bash-unit package
#
0 4	* * *	root	[ -x /usr/bin/bash-unit_maintenance ] && /usr/bin/bash-unit_maintenance
