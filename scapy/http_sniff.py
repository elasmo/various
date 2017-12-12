#!/usr/bin/env python2.7
from scapy.all import *

pkts = sniff(filter="port 80", prn=lambda x:x.sprintf("{IP:%IP.src% -> %IP.dst%\n}{Raw:%TCP.payload%\n}"))

#prn=lambda x: x.sprintf("%IP.src%:%TCP.sport% -> %IP.dst%:%TCP.dport%  %2s,TCP.flags% : %TCP.payload%"))

