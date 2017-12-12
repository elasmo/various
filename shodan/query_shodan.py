#!/usr/bin/env python3
import shodan
import sys

if len(sys.argv) != 2:
    print("Usage: {} <query>".format(sys.argv[0]))
    sys.exit(1)

API_KEY = ""
api = shodan.Shodan(API_KEY)

try:
    results = api.search(sys.argv[1])
    print('Results found: %s' % results['total'])

    for result in results['matches']:
        print("IP: %s" % result['ip_str'])
        print(result['data'])
except shodan.APIError as e:
    print("Error: %s" % e)
    sys.exit(1)
