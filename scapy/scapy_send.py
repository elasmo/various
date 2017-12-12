#!/usr/bin/env python2.7

from scapy.all import *
import random

#sendp(Ether(dst="ff:ff:ff:ff:ff:ff",src="ee:ee:ee:ee:ee:ee")/ARP(hwsrc="de:ad:be:ee:fb:0b",pdst="192.168.32.32"))

pkt = IP(dst="127.0.0.1", src="192.168.66.66")/TCP(sport=random.randint(1024,65535), dport=8888, seq=random.randint(0,0x100000000), flags='R')
send(pkt, verbose=0)
