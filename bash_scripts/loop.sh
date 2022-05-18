#!/bin/bash

for i in {1..10}
do 
	sek=$(( 10 - $i ))
	echo "Rakieta wystartuje za $sek sekund"
done


for file in $(find . -name "test*")
do
	echo "Znalazłem plik $file"
done


countMax=4
count=0

while [[ $count -lt $countMax ]] ; do
	count=$(( $count + 2 ))
	echo "Wszedłem do petli"
done

count2=0
countMax2=4
password="test"

until [[ $count2 -ge $countMax2 ]] ; do
	count2=$(( $count2 + 1 ))
	echo -n "Zgadnij hasło: "
	read pass
	if [ $pass == $password ] ; then
		echo "Zgadłeś!!!"
		exit 0
	else
		echo "Próbuj dalej"
	fi	
done
echo "Jestes looser - nie zgdałeś"
exit 1
	
