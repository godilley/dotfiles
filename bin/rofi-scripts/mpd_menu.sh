#!/bin/bash

. ~/bin/rofi-scripts/rofi_command.sh

### Options ###
playByTitle='Play Song By Title'
toggle='  Play / Pause'
prev='  Previous'
next='  Next'

# Variable passed to rofi
options="$playByTitle\n$toggle\n$prev\n$next"

chosen="$(echo -en "$options" | $rofi_command -p ' ' -dmenu -selected-row 1)"
case $chosen in
    $playByTitle)
        . ~/bin/rofi-scripts/mpd_playByTitle.sh
        ;;
    $toggle)
        mpc toggle
        ;;
    $prev)
        mpc next
        ;;
    $next)
        mpc prev
        ;;
esac


