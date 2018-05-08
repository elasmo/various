#!/bin/sh
#
# Sloppy upgrade script for FreeBSD
# 2017
#

if [ "$(id -u)" -ne 0 ]
then
    echo "$0: must be run as root."
    exit 1
fi

jail_root="/jail"
jails="web log shell limia"

#echo "===> Upgrading base and packages on host"
pkg update
pkg upgrade
PAGER=cat freebsd-update --not-running-from-cron fetch install

for j in ${jails}
do
    echo "===> Upgrading base and packages on ${jail_root}/${j}"
    pkg -j ${j} update
    pkg -j ${j} upgrade
    PAGER=cat freebsd-update -b "${jail_root}/${j}" --not-running-from-cron fetch install
done

echo "Note that ${jail_root}/base is not included and if any kernel updates has been included, the kernel needs to be rebuilt using custom configuration."
echo "cd /usr/src && make buildkernel KERNCONF=MINNOW && make installkernel KERNCONF=MINNOW"

exit 0
