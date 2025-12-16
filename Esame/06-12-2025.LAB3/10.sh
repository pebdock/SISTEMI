#!/bin/bash
for f in `ls -1` ; do
	echo "File is ${f}"
	ls -alhd ${f}
done
