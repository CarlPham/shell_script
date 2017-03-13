#!/bin/sh
memuse=$(free -m | awk '/Mem/ {print $4}')
if [ $memuse -le 500 ]; then
    message="RAM is critical condition in this server"
    echo -e "" | sync; echo 3 > /proc/sys/vm/drop_caches
fi