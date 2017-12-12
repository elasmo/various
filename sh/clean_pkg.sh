#!/bin/sh
if [ "$(id -u)" -ne 0 ]
then
    echo "$0: must be run as root."
    exit 1
fi

jail_root="/jail"
jails="web log shell hydra"

echo "===> Removing stale packages on host"
pkg autoremove -y

echo "===> Cleaing package cache on host"
pkg clean -ay

for j in ${jails}
do
    echo "===> Removing stale packages (${j})"
    pkg -j ${j} autoremove

    echo "===> Cleaning package cache (${j})"
    pkg -j ${j} clean -a
done

exit 0
