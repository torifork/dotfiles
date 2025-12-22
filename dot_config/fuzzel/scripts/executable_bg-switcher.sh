#!/usr/bin/bash

WALLDIR="$HOME/Pictures/Wallpapers"

choice=$(find "$WALLDIR" -type f \( -iname "*.*" \) \
  | sort \
  | sed "s|^$WALLDIR/||" \
  | fuzzel --dmenu --prompt="Wallpaper: ")

[ -z "$choice" ] && exit 0

swww img "$WALLDIR/$choice" \
	--transition-type any \
	--transition-duration 2 \
	--transition-fps 60
matugen --type scheme-neutral image "$WALLDIR/$choice"
ln -sf "$WALLDIR/$choice" "$HOME/.cache/lockscreen.png"
