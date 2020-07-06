#!/usr/bin/env python3
#
# Print URL to stdout
# Doesn't verify certificates. Don't use this for anything that matters
#
import urllib.request, ssl
c = ssl.create_default_context()
c.check_hostname = False
c.verify_mode = ssl.CERT_NONE
r = urllib.request.urlopen('https://localhost', context=c)
print(r.read())
