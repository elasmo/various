#!/usr/bin/env python3
#
# Script dumping SOAP actions from a WSDL file
# using zeep.
#
from zeep import Client
import operator

base = "http://"

with open('endpoints_List') as f:
    for line in f:
        wsdl = base + line.rstrip() + "?WSDL"
        client = Client(wsdl=wsdl)
        print(wsdl)

        for service in client.wsdl.services.values():
            for port in service.ports.values():
                operations = sorted(
                        port.binding._operations.values(),
                        key=operator.attrgetter('name'))

                for operation in operations:
                    print("\t" + operation.name)
