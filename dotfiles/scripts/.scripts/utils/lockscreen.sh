#!/bin/bash
pkill -u "$USER" -USR1 dunst
rm /tmp/screen_locked*.png
scrot /tmp/screen_locked.png
convert /tmp/screen_locked.png -scale 5% -scale 2000% /tmp/screen_locked2.png
i3lock -n -e -c 000000 -u -i /tmp/screen_locked2.png
rm /tmp/screen_locked*.png
pkill -u "$USER" -USR2 dunst

#loginctl lock-session
