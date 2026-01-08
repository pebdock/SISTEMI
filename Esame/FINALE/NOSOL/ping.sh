#!/bin/bash
./pong.sh &
touch ping.txt
trap 'kill $! ; rm ping.txt 2> /dev/null ; rm pong.txt 2> /dev/null ; kill $BASHPID' SIGINT
while sleep 2 ; do
if [[ -e ./ping.txt ]] ; then
	echo "ping.sh"
	touch pong.txt
	rm ping.txt
fi
done
