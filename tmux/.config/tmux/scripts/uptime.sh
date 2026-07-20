#!/usr/bin/env bash
if [[ "$(uname)" == "Darwin" ]]; then
  boot=$(sysctl -n kern.boottime | awk -F'[ ,]' '{print $4}')
  secs=$(( $(date +%s) - boot ))
else
  secs=$(awk '{print int($1)}' /proc/uptime)
fi
d=$((secs/86400)); h=$(((secs%86400)/3600)); m=$(((secs%3600)/60))
printf "%dd %dh %dm" "$d" "$h" "$m"
