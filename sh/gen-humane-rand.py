#!/bin/sh
#
# Generates a more "human" key
#
cat /dev/urandom | tr -dc 'A-Z0-9' | head -c 32 | sed 's/.\{4\}/& /g' && echo
