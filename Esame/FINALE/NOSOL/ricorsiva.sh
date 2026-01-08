#!/bin/bash
if [[ ! $# -eq 2 || ! -d "$1" || ! -d "$2" ]] ; then
	echo "Inserire argomenti validi" >&2
	exit 1
fi

DIR1="$1"
DIR2="$2"

for file in ${DIR1}/*.txt ; do
	if [[ -e "${file}" && -s "${file}" ]] ; then
		cp "${file}" ${DIR2}
	fi 
done
