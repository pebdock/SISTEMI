#!/bin/bash
while read LINE; do
	PAROLA="${LINE%% *}"
	echo ${PAROLA} 1>&2
	echo "EVVIVA"
done
