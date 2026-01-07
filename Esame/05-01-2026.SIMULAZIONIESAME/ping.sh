#!/bin/bash

PING="ping.txt"
PONG="pong.txt"

rm -f "$PING" "$PONG"

./pong.sh &
PONGPID=$!

trap 'rm -f "$PING" "$PONG"; kill "$PONGPID" 2>/dev/null; exit 0' INT TERM EXIT

touch "$PING"

while true; do
  sleep 2
  if [[ -e "$PING" ]]; then
    echo "ping.sh"
    touch "$PONG"
    rm -f "$PING"
  fi
done
