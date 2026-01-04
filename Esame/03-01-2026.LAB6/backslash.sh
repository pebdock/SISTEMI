#!/bin/bash
while read RIGA; do
	NUOVA="${RIGA}"
	NUOVA=${NUOVA//'*'/'*\'}
	NUOVA=${NUOVA//'?'/'?\'}
	NUOVA=${NUOVA//'['/'[\'}
	NUOVA=${NUOVA//']'/']\'}

	if [[ "${NUOVA}" != "${RIGA}" ]]; then
		echo "${NUOVA}"
	fi
done
