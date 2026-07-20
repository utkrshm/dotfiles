#!/usr/bin/env bash
if [[ "$(uname)" == "Darwin" ]]; then
  pmset -g batt | grep -Eo "[0-9]+%" | head -1
elif command -v upower >/dev/null 2>&1; then
  upower -i "$(upower -e | grep BAT)" 2>/dev/null | grep percentage | awk '{print $2}'
elif [ -f /sys/class/power_supply/BAT0/capacity ]; then
  echo "$(cat /sys/class/power_supply/BAT0/capacity)%"
else
  echo "AC"
fi
