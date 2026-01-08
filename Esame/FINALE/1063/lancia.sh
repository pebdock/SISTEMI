#!/bin/bash
FILES=$(ls -S1 /usr/include/*.h | head -n 7)
./contaseparatamente.sh ${FILES} 1>&2
