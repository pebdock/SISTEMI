#!/bin/bash
SEC=$1
while [[ ${SEC} -gt 0 ]] ; do
	echo ".$BASHPID"
	sleep 1;
	(( SEC=${SEC}-1 ))
done
