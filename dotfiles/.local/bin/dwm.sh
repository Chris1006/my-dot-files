#!/usr/bin/env sh

[ -f $HOME/.xprofile ] && . $HOME/.xprofile
[ -f ~/.Xresources ] && xrdb -merge -I$HOME ~/.Xresources
[ -f $HOME/.config/sshrc ] && . $HOME/.config/sshrc


#. $HOME/.local/bin/start-gnome-keyring

while type dwm ; do dwm 2> $HOME/.cache/dwm.log && continue || break; done

