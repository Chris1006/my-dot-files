#!/bin/sh

choice_by_dmenu() {
  choice=$(echo -e "0: Logout\n1: Reboot\n2: Shutdown" | dmenu | cut -d ':' -f 1)
}

choice_by_dmenu

[[ -z "$choice" ]] && exit 1

case "$choice" in
  0) i3-msg exit              ;;
  1) shutdown -r now &   ;;
  2) shutdown -h now &   ;;
esac
