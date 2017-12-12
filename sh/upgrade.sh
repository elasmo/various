#!/bin/sh
#
# 2017

if [ "$(id -u)" -ne 0 ]
then
    echo "$0: must be run as root."
    exit 1
fi

jail_root="/jail"
jails="web log shell hydra"

echo "===> Upgrading base and packages on host"
pkg update
pkg upgrade
freebsd-update fetch install

for j in ${jails}
do
    echo "===> Upgrading base and packages on ${jail_root}/${j}"
    pkg -j ${j} update
    pkg -j ${j} upgrade
    freebsd-update -b "${jail_root}/${j}" fetch install
done

echo "Note that ${jail_root}/base is not included"

exit 0
