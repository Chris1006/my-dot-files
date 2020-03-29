#!/bin/sh

[ -f "$HOME/.config/secretsrc" ] && . $HOME/.config/secretsrc
[ -f "$HOME/.config/aliasrc" ] && . $HOME/.config/aliasrc
[ -f "$HOME/.config/shortcutsrc" ] && . $HOME/.config/shortcutsrc

# EXPORT PATH
export PATH=$HOME/.local/bin:$HOME/.local/bin/games:$HOME/.local/bin/private:/usr/local/bin:$PATH


export SUDO_ASKPASS="$HOME/.local/bin/dmenupass"

# clean up
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export NOTMUCH_CONFIG="$HOME/.config/notmuch-config"
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export WGETRC="$HOME/.config/wget/wgetrc"
export INPUTRC="$HOME/.config/inputrc"
export ZDOTDIR="$HOME/.config/zsh"
export PASSWORD_STORE_DIR="$HOME/.local/share/password-store"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/config

# HIGHDPI
export GDK_SCALE=2
#export GDK_DPI_SCALE=1.75

# standard programms
export VISUAL=nvim
export EDITOR=$VISUAL
export BROWSER="brave"
export TERMINAL="st"
export TERM=$TERMINAL
export DIFFPROG="nvimdiff"

eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK

# Start mpd if not running
[ ! -f $HOME/.config/mpd/mpd.pid ] && mpd >/dev/null 2>&1 &

# start x
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx > /dev/null; fi
