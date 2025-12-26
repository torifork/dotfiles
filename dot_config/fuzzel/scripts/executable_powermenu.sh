#!/usr/bin/bash

options="\
󰐥 Shutdown
󰜉 Reboot
󰌾 Logout
󰍃 Lock
󰗼 Suspend
󰏥 Cancel"

choice=$(printf "%s\n" "$options" | fuzzel --dmenu --minimal-lines --prompt="Power: ")

case "$choice" in
  *Shutdown)
    loginctl poweroff
    ;;
  *Reboot)
    loginctl reboot
    ;;
  *Logout)
    loginctl terminate-user "$USER"
    ;;
  *Lock)
    # Change this to your locker
    swaylock
    ;;
  *Suspend)
    loginctl suspend
    ;;
  *)
    exit 0
    ;;
esac
