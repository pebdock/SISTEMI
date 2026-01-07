#!/bin/bash

if [[ $# -ne 2 || ! -e "$1" || ! "$2" =~ ^[[:digit:]]+$ || $2 -eq 0 ]] ; then
        echo "I due argomenti non sono corretti" >&2
        exit 1
fi

MAXCOLS=1;

while true ; do
	if [[ -n "`cut -d "," -f $MAXCOLS < "$1"`" ]] ; then
		(( MAXCOLS=${MAXCOLS}+1 ))
	else
		break
	fi
done

if [[ $2 -lt $MAXCOLS ]] ; then
	cut -d "," -f "$2" < "$1"
	exit 0
else
	echo "Numero di colonne massimo è $(( $MAXCOLS - 1 ))"
	exit 1
fi
