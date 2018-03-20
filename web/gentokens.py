#!/usr/bin/env python3
#
# https://docs.python.org/3/library/secrets.html
# 
import secrets

print(secrets.token_bytes(20))
print(secrets.token_hex(20))
print(secrets.token_urlsafe(20))
print(secrets.randbits(173))
