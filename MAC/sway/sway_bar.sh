#!/bin/sh
################
# Variables
################

# Keyboard input name
keyboard_input_name="1:1:AT_Translated_Set_2_keyboard"

# Date and time
date_and_week=$(date "+%a %b %d - %d/%m/%Y (w%-V)")
current_time=$(date "+%H:%M:%S")

#############
# Commands
#############

# Audio and multimedia
audio_volume=$(pamixer --sink `pactl list sinks short | grep RUNNING | awk '{print $1}'` --get-volume)
audio_is_muted=$(pamixer --sink `pactl list sinks short | grep RUNNING | awk '{print $1}'` --get-mute)
media_artist=$(playerctl metadata artist)
media_song=$(playerctl metadata title)
player_status=$(playerctl status)

# Others
loadavg_5min=$(cat /proc/loadavg | awk -F ' ' '{print $2}')

uptime_formatted=$(uptime | cut -d ',' -f1  | cut -d ' ' -f4,5)

# Without ARCH part
#linux_version=$(uname -r | cut -d '-' -f1)
linux_version=$(uname -r)

# Removed weather because we are requesting it too many times to have a proper
# refresh on the bar
#weather=$(curl -Ss 'https://wttr.in/Pontevedra?0&T&Q&format=1')

#battery_info="$(cat /sys/class/power_supply/BAT0/status) - $(cat /sys/class/power_supply/BAT0/capacity)%"
battery_info="$(acpi)"
battery_info="${battery_info/Battery 0: /}"

wifi="$(iw wlp3s0 info | grep ssid)"
wifi="${wifi/ssid /}"
wifi="$(echo $wifi | xargs)"

vpn=''

if [[ $(pgrep -x vpnc) ]]
then
        vpn=" - VPN"
fi



if [[ $player_status = "Playing" ]]
then
    song_status='▶'
elif [[ $player_status = "Paused" ]]
then
    song_status='⏸'
else
    song_status='⏹'
fi

if [[ $audio_is_muted = "true" ]]
then
    audio_active='🔇'
else
    audio_active='🔊'
fi

echo "🎧 $song_status $media_artist - $media_song | 🔋 $battery_info | $linux_version | ↑ $uptime_formatted | 🏋 $loadavg_5min | $audio_active $audio_volume% | 📡 $wifi$vpn |$date_and_week 🕘 $current_time"
