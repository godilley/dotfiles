#!/bin/bash

. ~/bin/rofi-scripts/rofi_command.sh

# Variable passed to rofi

options=$(mpc list title)
chosen="$(echo -en "$options" | $rofi_command -p 'Select Song  ' -dmenu)"

if [[ -z $chosen ]]; then
    exit
fi

track=$(mpc search title "$chosen" | head -n 1)
echo "Playing track $track"
mpc insert "$track"
mpc next
