#!/bin/sh
script_name="$(basename $0)"


while true
do
    core0temp=$(sysctl dev.cpu.0.temperature | awk '{print $2}')
    core1temp=$(sysctl dev.cpu.1.temperature | awk '{print $2}')

    if [ $? -ne 0 ]
    then
        echo "${script_name}: unable to retrieve core temperatures."
        exit 1
    fi
     
    echo "coretemp.sh: core0='${core0temp}' core1='${core1temp}' unixtime='$(date +%s)'"
    sleep 600   # 10 minutes
done
