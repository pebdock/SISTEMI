#!/bin/bash
if [[ ! -d $1 ]] ; then
	echo "Non esiste la directory del primo argomento" >&2
	exit 1
elif [[ ! -d $2 ]] ; then
	echo "Creata directory del secondo argomento"
	mkdir "$2"
fi

for txt in "$1/"*.txt ; do
	CONDIZIONE=`wc -c "${txt}" | cut -d " " -f 1`
	if [[ ${CONDIZIONE} -ne 0 ]] ; then
		cp "${txt}" "$2"
	fi
done
