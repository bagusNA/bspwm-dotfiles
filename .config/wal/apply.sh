#!/bin/bash
wallpaper=~/Pictures/Wallpapers

wal -i $wallpaper --iterative

source "${HOME}/.cache/wal/colors.sh"

bspc config focused_border_color "$color6"

# mkdir -p "${HOME}/.config/dunst"
ln -sf "${HOME}/.cache/wal/dunstrc" "${HOME}/.config/dunst/dunstrc"
pkill dunst
dunst &
pywal-discord