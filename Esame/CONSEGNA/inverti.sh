#!/bin/bash
if [[ -e $1 ]]; then 
	NUM=`cat $1 | wc -l`
	while [[ NUM -ge 0 ]]; do
		cat $1 | head -n $NUM | tail -n 1
		(( NUM=${NUM}-1 ))
	done
else
	echo "Inserire un percorso valido"
fi
