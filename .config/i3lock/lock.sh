#!/bin/sh

# Credit: u/ariathriven https://www.reddit.com/r/unixporn/comments/jyzw5k/i3lock_love_linux_for_letting_me_have_this_lock/

i3lock --nofork					\
    --ignore-empty-password		\
    \
    --indicator						\
    --bar-indicator					\
    --bar-position="1070"			\
    --bar-base-width="10"			\
    --bar-orientation=horizontal	\
    --bar-color=2e3440				\
    --ringvercolor=88c0d0			\
    --ringwrongcolor=bf616a			\
    --bshlcolor=5e81ac				\
    --keyhlcolor=a3be8c				\
    \
    --clock								\
    --timecolor=eceff4ff				\
    --timestr="%I:%M %p"				\
    --time-font="Calvin and Hobbes"		\
    --timesize=150						\
    --timepos="1350:875"				\
    --timecolor=2e3440ff				\
    \
    --datecolor=d8dee9ff				\
    --datestr="%A, %d %B"			\
    --datecolor=2e3440ff				\
    --date-font="Calvin and Hobbes"		\
    --datesize=108						\
    --datepos="1350:1002"				\
    \
    --verif-font="Calvin and Hobbes"	\
	--verifcolor=2e3440ff				\
    --verifsize=150						\
    --veriftext=""						\
    --wrong-font="Calvin and Hobbes"	\
	--wrongcolor=2e3440ff				\
    --wrongsize=150						\
    --wrongtext="you shall not pass!"	\
    --noinputtext="-_-"					\
	\
    --image=/home/chaos/Pictures/nord-calvin-and-hobbes.png

