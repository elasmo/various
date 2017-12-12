#!/usr/bin/env python
from scapy.layers.tls.all import *
ch = TLSClientHello(ciphers=0xc030)
data = b"GET / HTTP/1.1\r\nHost: example.com\r\n\r\n"
t = TLSClientAutomaton(server="93.184.216.34", dport=443, client_hello=ch, data=data)
t.run()
