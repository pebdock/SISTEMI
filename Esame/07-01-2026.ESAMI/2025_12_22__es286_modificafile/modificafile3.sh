#!/bin/bash
if [[ $# -ne 1 ]] ; then
	echo "Inserire un argomento valido" >&2
	exit 1
elif [[ ! -e "$1" ]] ; then
	echo "Il file non esiste" >&2
	exit 1
elif [[ ! -f "$1" ]] ; then
	echo "Il file non è normale" >&2
	exit 1
elif [[ ! -r "$1" ]] ; then
 	echo "Il file non esiste oppure non leggibile" >&2
	exit 1
elif [[ ! -w "$1" ]] ; then
	echo "Il file non è scrivibile" >&2
	exit 1
fi

echo "ORIGINALE"
cat "$1"
FILE="";

while read RIGA ; do
	if [[ -z ${FILE} ]] ; then
		FILE="${FILE}${RIGA}\n${RIGA}"
	else
		FILE="${FILE}\n${RIGA}\n${RIGA}"
	fi
done < "$1"

echo -e "${FILE}" > "$1"

echo "MODIFICATO"
cat "$1"
