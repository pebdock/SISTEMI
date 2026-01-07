F1="$1"
F2="$2"

if [[ -z "${F1}" || -z "${F2}" || ! -e "${F1}" && ! -e "${F2}" ]] ; then
	echo "File non esistente"
	exit 1;
fi

LINES1=`wc -l "${F1}" | cut -d " " -f 1`
LINES2=`wc -l "${F2}" | cut -d " " -f 1`
LINES=0

if [[ ${LINES1} -le ${LINES2} ]] ; then
	LINES=${LINES1}
else
	LINES=${LINES1}
fi

for (( i=1;i<=LINES;i=$i+1 )) ; do

a1="";
a2="";
a3="";
a4="";

while read A1 A2 A3 A4 A5 ; do
	a1="${A1}"
	a2="${A2}"
	a3="${A3}"
	a4="${A4}"
done <<< "`if [[ $i -ne 1 ]] ; then head -n $i "${F1}" | tail -n $(( $i-1 )) ; else head -n 1 "${F1}" ; fi`"

if [[ -n "${a4}" ]] ; then
	while read B1 B2 B3 B4 B5 ; do
		if [[ -n "${B4}" ]] ; then
			echo "${a1} ${B1} ${a2} ${B2} ${a3} ${B3} ${a4} ${B4}"
		fi	
	done <<< "`if [[ $i -ne 1 ]] ; then head -n $i "${F2}" | tail -n $(( $i-1 )) ; else head -n 1 "${F2}" ; fi`" 
fi

done

