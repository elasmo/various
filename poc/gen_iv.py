#!/usr/bin/env python3
#
# Originally used for converting a VB.NET Byte() array
# to a format usable as initialization vector, i.e.
# openssl -iv 023f0924ebae4e0c (...)
from binascii import hexlify

print(hexlify(bytearray([5, 12, 6, 7, 8, 9, 10, 12])))
