#!/bin/bash
if [[ $# -ne 2 ]] ; then
	echo "Inserire due argomenti" 1>&2
	exit 1
elif [[ ! -e "$1" ]] ; then
	echo "Inserire un file esistente .csv" 1>&2
	exit 1
elif [[ ! "$2" =~ ^[0-9]+$ || $2 -le 0 ]] ; then
	echo "Inserire un indice intero > 0" 1>&2
	exit 1
fi

cut -d "," -f "$2" "$1"
