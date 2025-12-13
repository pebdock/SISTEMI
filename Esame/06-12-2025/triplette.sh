#!/bin/bash
ROWS=1
for file in * ; do
	if (( (${ROWS}%3) == 1 )); then
		echo -n "(${file};";
	elif (( (${ROWS}%3) == 2 )); then
		echo -n "${file};";
	else
		echo "${file})";
	fi
	(( ROWS=${ROWS}+1 ))
done
