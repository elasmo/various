#!/usr/bin/env python3
import socket, sys
rhost = sys.argv[1]
rip = socket.gethostbyname(rhost)
port = int(sys.argv[2])
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
setdefaulttimeout(0.5)
r = s.connect_exe((rip, port))
if r == 0:
    print("{},{},{}".format(rip, rhost, port))
s.close()
