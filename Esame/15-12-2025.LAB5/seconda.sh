#!/bin/bash
exec {FD}< "./$1"
OUT=""
if (( $? == 0 )); then
	while read -r -u ${FD} A B C; do
        	OUT="${OUT}${B} "
	done
fi
exec {FD}<&-
echo ${OUT}
