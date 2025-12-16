#!/bin/bash
for let in {c..g} ; do
	for file in /usr/include/?${let}* ; do
		if [[ ${#file} -lt 18 || ${#file} -gt 23 ]] ; then
			echo ${file};
		fi;
	done;
done
		
