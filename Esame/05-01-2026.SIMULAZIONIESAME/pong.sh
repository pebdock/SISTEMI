#!/bin/bash

PING="ping.txt"
PONG="pong.txt"

while true; do
  sleep 2
  if [[ -e "$PONG" ]]; then
    echo "pong.sh"
    touch "$PING"
    rm -f "$PONG"
  fi
done
