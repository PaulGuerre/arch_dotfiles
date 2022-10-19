#!/bin/sh
# Times the screen off and puts it to background
swayidle \
    timeout 10 'hyprctl dispatch dpms off' \
    resume 'hyprctl dispatch dpms on' &
# Locks the screen immediately
swaylock --screenshots --clock --indicator-idle-visible --inside-color 282a36 --inside-clear-color 282a36 --inside-ver-color 282a36 --inside-wrong-color 282a36 --key-hl-color bd93f9 --line-color 282a36 --line-clear-color 282a36 --line-ver-color 282a36 --line-wrong-color 282a36 --ring-color 282a36 --ring-clear-color 282a36 --ring-ver-color 282a36 --ring-wrong-color 282a36 --separator-color bd93f9 --text-color bd93f9 --text-clear-color bd93f9 --text-ver-color bd93f9 --text-caps-lock-color bd93f9 --text-wrong-color ff5555 --effect-blur 4x2 --text-clear Cleared --text-caps-lock Maj --text-ver Checking --text-wrong Cheh --bs-hl-color bd93f9 --fade-in 0.5
#swaylock
# Kills last background task so idle timer doesn't keep running
kill %%