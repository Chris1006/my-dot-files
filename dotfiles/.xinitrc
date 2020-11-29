#!/usr/bin/env sh

[ -f ~/.xprofile ] && . ~/.xprofile
[ -f ~/.config/sshrc ] && . ~/.config/sshrc

. ~/.local/bin/start-gnome-keyring
#exec dwm

while type dwm ; do dwm 2> ~/.dwm.log && continue || break; done

#exec dwm
#exec i3 
#ssh-agent i3
#ssh-add
