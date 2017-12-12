#!/usr/bin/env python2.7
from scapy.all import *
pkt = sniff(filter="port 443", count=5)

#pkt = tshark(filter="port 443", count=5)
#print type(pkt) 
#print pkt

for p in pkt:
	print "===> " + p[IP].src + ":" + str(p[TCP].sport) + " -> " + p[IP].dst + ":" + str(p[TCP].dport)
	#print p.summary()
	#print p.show()
	#print p.command()
	#print p.haslayer()
	#print p.getlayer()
	print "---"
