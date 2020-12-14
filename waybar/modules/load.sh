#!/bin/bash
loadavg_5min=$(cat /proc/loadavg | awk -F ' ' '{print $2}')
icon="🏋️"
echo -e "{\"text\":\""$loadavg_5min $icon"\"}"
