# Best Wine Twitter Bot v1.0 by @zeampzpvy
https://www.abovelinks.com/ze
Note: Defunct now that Elon Musk bought Twitter and renamed it X.

An automated Twitter bot written in Python attempts to review wine
and usually makes hilarious mistakes. Sometimes it drinks too much
and quotes Edgar Allan Poe. Inspired by @mechnicalpoe; base script
by @robincamille.

This idea started as a social experiment. I personally cannot tell
the difference between a bottle of $20 wine and $200 wine. I am
curious what likes, retweets, etc. the bot will get from its
nonsensical logic.

You can view the bot in action on Twitter as @BestWineReview
(https://twitter.com/BestWineReview) -- I recommend setting the
bot to run with crontab every once in a while:

00 11,16 * * * /path/to/tweet.sh > /dev/null 2>&1

Future ideas include better databases, more randomized tweets, and
more automated interaction. I have also thought about using the
Markov chain in one of its random tweets and fill the bot with a
large wine-related script.

Since I'm a little new to Python, we are using Bash to do a lot of
our work. Soon, we'll be pure Python! Drink one for me.
