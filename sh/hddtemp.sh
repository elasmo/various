#!/bin/sh
#
core0temp=$(sysctl dev.cpu.0.temperature | awk '{print $2}')
core1temp=$(sysctl dev.cpu.1.temperature | awk '{print $2}')
drives="ada0 ada1 ada2 ada3"
logmessage=""

if [ $? -ne 0 ]
then
    echo "${script_name}: unable to retrieve SMART attributes."
    exit 1
fi

for i in ${drives}
do
    temp=$(smartctl -A '/dev/'${i} | grep Temperature_Celsius | awk '{print $10}')
    logmessage="${logmessage}${i}='${temp}' "
done
echo -n "hddtemp.sh: "
echo "${logmessage} unixtime='$(date +%s)'"
