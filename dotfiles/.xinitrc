#!/usr/bin/env sh

[ -f ~/.xprofile ] && . ~/.xprofile
[ -f ~/.config/sshrc ] && . ~/.config/sshrc

while type dwm > /dev/null ; do dwm && continue || break; done

#exec dwm
#exec i3 
#ssh-agent i3
#ssh-add
