#!/bin/sh

class=$(playerctl metadata --player=juk --format '{{lc(status)}}')
icon="🎵"
icon="♫"
icon="🎜"
icon="🎧"

if [[ $class == "playing" ]]; then
  info=$(playerctl metadata --player=juk --format '{{artist}} - {{title}}')
  if [[ ${#info} > 40 ]]; then
    info=$(echo $info | cut -c1-40)"..."
  fi
  text=$info" "$icon
elif [[ $class == "paused" ]]; then
  text=$icon
elif [[ $class == "stopped" ]]; then
  text=""
fi

if [[ -f "/home/george/hidejuk" ]]; then
  text=$icon
fi

echo -e "{\"text\":\""$text"\", \"class\":\""$class"\"}"
