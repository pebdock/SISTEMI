#!/bin/bash 
find /usr/include/ -maxdepth 1 -type f -name "std*" |
while read -r FILE ; do 
	head -n 4 "${FILE}" | tail -n 3
done > output.txt
