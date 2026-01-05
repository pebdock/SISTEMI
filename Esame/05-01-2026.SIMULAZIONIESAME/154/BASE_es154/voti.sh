### Nei commenti che seguono vedete dei suggerimenti sull'algoritmo da
### seguire per produrre l'output corretto.
###

# I voti della seconda prova li devo mettere tutti nello standard output


# Poi devo mettere nello standard output i voti della prima prova
# ottenuti dagli studenti che non hanno un voto nella seconda prova
cat ./esame2.txt
while read MATRICOLA1 VOTO1 ; do
	
	if [[ -z "${MATRICOLA1}" || -z "${VOTO1}" ]] ; then
		echo "Formato del file sbagliato" >&2
		exit 1
	fi

	VOTO2=`grep "${MATRICOLA1} " ./esame2.txt`
	
	if [[ -z ${VOTO2} ]] ; then
		echo "${MATRICOLA1} ${VOTO1}"
	fi
	
done < ./esame1.txt
exit 0
