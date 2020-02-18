#!/usr/bin/env sh

[ -f ~/.xprofile ] && . ~/.xprofile

exec i3 > /dev/null
