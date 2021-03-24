#!/bin/bash

. ~/bin/rofi-scripts/rofi_command.sh

### Options ###
logout=' Logout'
lock=' Lock'
powerOff=' Poweroff'
reboot=' Reboot'
reloadi3=' Reload i3'
restarti3=' Restart i3'

# Variable passed to rofi
options="$logout\n$lock\n$powerOff\n$reboot\n$reloadi3\n$restarti3"

chosen="$(echo -en "$options" | $rofi_command -p ' ' -dmenu -selected-row 1)"
case $chosen in
    $logout)
        i3-msg exit
        ;;
    $lock)
        exec ~/bin/locki3
        ;;
    $powerOff)
        poweroff
        ;;
    $reboot)
        reboot
        ;;
    $reloadi3)
        i3-msg reload
        ;;
    $restarti3)
        i3-msg restart
        ;;
esac


