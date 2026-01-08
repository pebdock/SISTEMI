#!/bin/bash
while sleep 2 ; do
	if [[ -e pong.txt ]] ; then
		echo "pong.sh"
		touch ping.txt
		rm pong.txt
	fi
done
