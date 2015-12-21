#!/usr/local/bin/python
#
# Best Wine Twitter Bot v1.0 by @m3th4mp (http://www.geekdime.com)
#
# '||'''|,                 ||       '||      ||`                     
#  ||   ||                 ||        ||      ||   ''                 
#  ||;;;;   .|''|, ('''' ''||''      ||  /\  ||   ||  `||''|,  .|''|,
#  ||   ||  ||..||  `'')   ||         \\//\\//    ||   ||  ||  ||..||
# .||...|'  `|...  `...'   `|..'       \/  \/    .||. .||  ||. `|... 
#
# An automated Twitter bot written in Python attempts to review wine
# and usually makes hilarious mistakes. Sometimes it drinks too much
# and quotes Edgar Allan Poe. Inspired by @mechnicalpoe; base script
# by @robincamille.

import tweepy, time, os, random

CONSUMER_KEY = 'consumerkeyhere' # To get this stuff, sign in at https://dev.twitter.com and Create a New Application
CONSUMER_SECRET = 'consumersecrethere' # Make sure access level is Read And Write in the Settings tab
ACCESS_KEY = 'accesskeyhere' # Create a new Access Token
ACCESS_SECRET = 'accesssecrethere'
auth = tweepy.OAuthHandler(CONSUMER_KEY, CONSUMER_SECRET)
auth.set_access_token(ACCESS_KEY, ACCESS_SECRET)
api = tweepy.API(auth)

filename=open('tweet.db','r')
f=filename.readlines()
filename.close()

for line in f:
	api.update_status(line)
	print line