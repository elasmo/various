#!/usr/bin/env python
import jwt

print jwt.encode({'key': 'value'}, 'secretkey', algorithm='HS256')
