#!/usr/bin/env python3
#
# Random slack bot test
#

import requests
import sys

#api_url = "https://slack.com/api/auth.test"
#api_url = "https://slack.com/api/users.identity"
api_url = "https://slack.com/api/chat.postMessage"
token=""

#api_url = "https://slack.com/api/channels.setTopic"
#api_url = "https://slack.com/api/channels.history"

#r = requests.get(api_url, headers={ "Authorization" : "Bearer " + token })

r = requests.post(api_url, headers={ "Authorization" : "Bearer " + token },
                  data={ "username" : u"\u202eiͶternetMarițica", "channel" : "bteam", "text" : u"\u202e" + sys.argv[1]})

#r = requests.post(api_url, headers={ "Authorization" : "Bearer " + token }, data={ "channel" : "bteam", "topic" : "Fullt fräs" })

#r = requests.post(api_url, headers={ "Authorization" : "Bearer " + token })

#r = requests.post(api_url, headers={ "Authorization" : "Bearer " + token },
#                   data={ "channel" : "C9FDMCQTS", "count" : 2})

print(r.text)
