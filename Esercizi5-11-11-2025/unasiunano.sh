SI=0
while read riga ; do
	if(( ${SI} % 2 == 0 ));
	then echo "${riga}"
	 fi
	SI=$(($SI+1))
done
