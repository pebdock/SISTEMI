#!/bin/bash
FILES=$(find /usr/include/ -maxdepth 1 -type f -name "std*")
echo "${FILES}"
for file in  ${FILES} ; do
	head -n 4 ${file} | tail -n 3
done > output1.txt
