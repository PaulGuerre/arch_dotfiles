#!/bin/sh
# Times the screen off and puts it to background
swayidle \
    timeout 10 'swaymsg "output * dpms off"' \
    resume 'swaymsg "output * dpms on"' &
# Locks the screen immediately
swaylock --screenshots --clock --indicator-idle-visible --inside-color 292b2e --inside-clear-color 292b2e --inside-ver-color 292b2e --inside-wrong-color 292b2e --key-hl-color 292b2e --line-color 292b2e --line-clear-color 292b2e --line-ver-color 292b2e --line-wrong-color 292b2e --ring-color 292b2e --ring-clear-color 292b2e --ring-ver-color 292b2e --ring-wrong-color 292b2e --separator-color 292b2e --text-color ffffff --text-clear-color ffffff --text-ver-color ffffff --text-wrong-color ff6961 --effect-blur 4x2 --text-clear Cleared --text-caps-lock Maj --text-ver Checking --text-wrong Cheh --bs-hl-color 292b2e --fade-in 0.5
#swaylock
# Kills last background task so idle timer doesn't keep running
kill %%
