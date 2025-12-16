#!/bin/bash
LINE=0
while read RIGA ; do
	if (( ${LINE}%2==0 )); then
		echo "${RIGA}"
	fi
	(( LINE=${LINE}+1 ))
done
