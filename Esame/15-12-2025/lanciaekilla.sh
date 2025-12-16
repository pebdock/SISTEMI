#!/bin/bash
PIDS=`./lanciaeprendipid.sh`
for pid in ${PIDS}; do
	echo ${pid}
	kill -9 ${pid}
done
