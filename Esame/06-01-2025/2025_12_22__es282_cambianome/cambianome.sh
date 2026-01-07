#!/bin/bash
while read -r NOME MATRICOLA ALTRO ; do
	for file in ./files1/*${MATRICOLA}.txt ; do
		if [[ -n "${file}" && -e "${file}" ]] ; then
			cp "${file}" ./files2/"${NOME}.csv"
		fi
	done
done < ./elenco.txt
