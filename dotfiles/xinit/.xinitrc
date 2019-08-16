#eval $(/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1)
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
export MOZ_USE_OMTC=1

exec i3
xrandr --dpi 192
