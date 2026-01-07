#!/bin/bash
while read A B C D; do
	if [[ -n "${C}" && ${#C} -ge 2 ]] ; then
		echo "${C:1:1}"	 
	fi
done < /usr/include/stdio.h
