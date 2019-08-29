#!/bin/bash
pkill -u "$USER" -USR1 dunst
rm /tmp/screen_locked*
scrot /tmp/screen_locked.png
convert /tmp/screen_locked.png -scale 10% -scale 1000% /tmp/screen_locked2.png
i3lock -n -e -c 000000 -u -i /tmp/screen_locked2.png
pkill -u "$USER" -USR2 dunst
