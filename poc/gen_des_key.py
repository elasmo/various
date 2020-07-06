#!/usr/bin/env python2
from Crypto.Protocol.KDF import PBKDF2
from Crypto.Hash import SHA
password = "KEYKEY"
salt = [ 1, 2, 3, 1, 4, 12, 30, 223, 5, 7, 8 ]
saltstr = ''.join(map(lambda x:chr(x),salt))
keys = PBKDF2(password, saltstr, 32, 5)
print keys[:32].encode('hex')
