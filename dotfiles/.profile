#!/bin/sh

[ -f "$HOME/.config/secretsrc" ] && . $HOME/.config/secretsrc
[ -f "$HOME/.config/aliasrc" ] && . $HOME/.config/aliasrc
[ -f "$HOME/.config/shortcutsrc" ] && . $HOME/.config/shortcutsrc
[ -f "$HOME/.config/customdpi" ] && . $HOME/.config/customdpi

# EXPORT PATH
export PATH=$HOME/.local/bin:$HOME/.local/bin/games:$HOME/.local/bin/private:/usr/local/bin:$HOME/.config/node_modules/bin:$PATH

# SUDO PASSWORD PROMPT
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
export XDG_CACHE_HOME="$HOME/.cache"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/config
export npm_config_prefix=$XDG_CONFIG_HOME/npm/node_modules

# standard programms
export VISUAL=nvim
export EDITOR=$VISUAL
export BROWSER="firefox-esr"
export TERMINAL="st"
export TERM=$TERMINAL
export DIFFPROG="nvimdiff"

# start x
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec startx > /dev/null; 
else
    export TERM="linux"
    $HOME/.config/setttycolor.sh
fi

