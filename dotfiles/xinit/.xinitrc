eval $(/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1)
export SSH_AUTH_SOCK
export MOZ_USE_OMTC=1
#eval $(ssh-agent -s)

exec i3
xrandr --dpi 192
