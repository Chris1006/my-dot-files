#!/usr/bin/env sh

[ -f ~/.xprofile ] && . ~/.xprofile
[ -f ~/.config/sshrc ] && . ~/.config/sshrc

#exec dwm
exec i3 
#ssh-agent i3
#ssh-add
