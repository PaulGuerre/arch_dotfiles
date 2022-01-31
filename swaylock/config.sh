#!/bin/sh
# Times the screen off and puts it to background
swayidle \
    timeout 10 'swaymsg "output * dpms off"' \
    resume 'swaymsg "output * dpms on"' &
# Locks the screen immediately
swaylock --screenshots --clock -l --bs-hl-color ff0000 --indicator-idle-visible --inside-color 20466a --inside-clear-color 1f70bd --inside-ver-color 1f70bd --inside-wrong-color ff0000 --key-hl-color ffffff --line-color 1f70bd --line-clear-color 20466a --line-ver-color 20466a --line-wrong-color ff0000 --ring-color 20466a --ring-clear-color 1f70bd --ring-ver-color 1f70bd --ring-wrong-color ff0000 --separator-color 1f70bd --text-color ffffff --text-clear-color ffffff --text-ver-color ffffff --text-wrong-color 000000 --effect-blur 4x2
# Kills last background task so idle timer doesn't keep running
kill %%
