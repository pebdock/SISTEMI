#!/bin/bash
SOMMA=0
for file in ./dir1/*[af]* ; do
	NUM=$(head -n 3 "${file}" | tail -n 1)
	(( SOMMA=${SOMMA}+${NUM} ))
done
echo $SOMMA
