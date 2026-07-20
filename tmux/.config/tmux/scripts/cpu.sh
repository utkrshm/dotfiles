#!/usr/bin/env bash
if [[ "$(uname)" == "Darwin" ]]; then
  ps -A -o %cpu | awk '{s+=$1} END {printf "%.1f%%", s}'
else
  top -bn1 | grep "Cpu(s)" | awk '{printf "%.1f%%", $2+$4}'
fi
