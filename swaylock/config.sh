#!/bin/sh
# Times the screen off and puts it to background
swayidle \
    timeout 10 'swaymsg "output * dpms off"' \
    resume 'swaymsg "output * dpms on"' &
# Locks the screen immediately
swaylock --screenshots --clock --indicator-idle-visible --inside-color 282a36 --inside-clear-color 292b2e --inside-ver-color 292b2e --inside-wrong-color 292b2e --key-hl-color 6867AC --line-color 282a36 --line-clear-color 292b2e --line-ver-color 292b2e --line-wrong-color 292b2e --ring-color 282a36 --ring-clear-color 292b2e --ring-ver-color 292b2e --ring-wrong-color 292b2e --separator-color 6867AC --text-color 6867AC --text-clear-color FFBCD1 --text-ver-color 6867AC --text-caps-lock-color A267AC --text-wrong-color CE7BB0 --effect-blur 4x2 --text-clear Cleared --text-caps-lock Maj --text-ver Checking --text-wrong Cheh --bs-hl-color 6867AC --fade-in 0.5
#swaylock
# Kills last background task so idle timer doesn't keep running
kill %%