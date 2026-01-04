#!/bin/bash
NUOVO=${PATH//':'/}
NUOVO=${NUOVO//'/'/' '}
for NAME in ${NUOVO}; do
	echo ${NAME}
done
