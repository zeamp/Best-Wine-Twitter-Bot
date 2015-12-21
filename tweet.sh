#!/usr/local/bin/bash
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
#
# Generate wine tweets from multiple databases
# Also generates random 'filler' tweets from another database
# Not the cleanest way of doing things, but it works.

echo "Generating random tweet..."

# This is a mess, I know...

year=$(cat /home/mh/winetwitter/wineyears.db | sort --random-sort | head -n 1)
wine=$(cat /home/mh/winetwitter/winenames.db | sort --random-sort | head -n 1)
hash1=$(cat /home/mh/winetwitter/hashtags1.db | sort --random-sort | head -n 1)
hash2=$(cat /home/mh/winetwitter/hashtags2.db | sort --random-sort | head -n 1)
review1=$(cat /home/mh/winetwitter/review1.db | sort --random-sort | head -n 1)
review2=$(cat /home/mh/winetwitter/review2.db | sort --random-sort | head -n 1)
review3=$(cat /home/mh/winetwitter/review3.db | sort --random-sort | head -n 1)
poe=$(cat /home/mh/winetwitter/poe.db | sort --random-sort | head -n 1)

# Are we doing booze or poe?
# Our crude artificial intelligence!
# You should run this with crontab.

tweet[0]="$year $wine $hash1 $hash2 $review1 $review2 $review3"
tweet[1]="$poe #EdgarAllanPoe"
tweet[2]="$year $wine $hash2 $hash1"
tweet[3]="$poe #EdgarAllanPoe"
rand=$[ $RANDOM % 4 ]

echo "Writing tweet to database..."
echo ${tweet[$rand]} > tweet.db
echo ""
/usr/local/bin/python /home/mh/winetwitter/bestwine.py
