#!/bin/bash
if [[ $# -ne 1 ]] ; then
	echo "Inserire un argomento" >&2
	exit 1
elif [[ ! $1 =~ ^[1-3]$ ]] ; then
	echo "Inserire un numero compreso tra 1 e 3" >&2
	exit 1
fi

echo "directory passata $1"
PATH="$(pwd)/$1:${PATH}"
bastardo.sh 
