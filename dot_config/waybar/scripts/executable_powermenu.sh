#!/usr/bin/env bash

options="\
󰐥 Shutdown
󰜉 Reboot
󰌾 Logout
󰍃 Lock
󰗼 Suspend
󰏥 Cancel"

choice=$(printf "%s\n" "$options" | fuzzel --dmenu --prompt="Power:")

case "$choice" in
  *Shutdown)
    systemctl poweroff
    ;;
  *Reboot)
    systemctl reboot
    ;;
  *Logout)
    loginctl terminate-user "$USER"
    ;;
  *Lock)
    # Change this to your locker
    swaylock
    ;;
  *Suspend)
    systemctl suspend
    ;;
  *)
    exit 0
    ;;
esac
