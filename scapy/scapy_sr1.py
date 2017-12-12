#!/usr/bin/env python2.7
from scapy.all import *
import random
import sys

if len(sys.argv) != 3:
	print "Usage: {} <dst> <dport>".format(sys.argv[0])
	sys.exit(1)

target = sys.argv[1]
port   = int(sys.argv[2])

print "Sending SYN packet to " + sys.argv[1] + ":" + str(sys.argv[2])

response = sr1(IP(dst=target)/TCP(sport=random.randint(1024,65535), dport=port, seq=random.randint(0,0x100000000), flags='S'))

if response:
	print response[0].show()
