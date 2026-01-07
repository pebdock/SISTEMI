#!/bin/bash
if [[ $# -ne 2 ]] ; then
	echo "Non sono stati inseriti 2 argomenti" >&2
	exit 1
fi
 
exec {F1}< "$1"
if [[ $? != 0 ]] ; then  echo "Impossibile leggere file 1" >&2 ; exit 1 ; fi
exec {F2}< "$2"
if [[ $? != 0 ]] ; then echo "Impossibile leggere file 2" >&2 ; exit 1 ; fi

while read -u ${F1} a1 a2 a3 a4 a5 && [[ -n "$a4" ]] && read -u ${F2} b1 b2 b3 b4 b5 && \
[[ -n "${b4}" ]] ; do
	echo "${a1} ${b1} ${a2} ${b2} ${a3} ${b3} ${a4} ${b4}"
done

exec {F1}>&-
exec {F2}>&-



