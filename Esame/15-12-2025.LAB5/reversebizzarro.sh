#!/bin/bash
STRINGA="$@"
STRINGAINVERTITA=""
(( I=${#STRINGA}-1 ))
while [[ ${I} -ge 0 ]]; do
	STRINGAINVERTITA=${STRINGAINVERTITA}${STRINGA:${I}:1}
	(( I=${I}-1 ))
done
echo ${STRINGAINVERTITA}
