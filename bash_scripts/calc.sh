#!/bin/bash

#if [ $1 -gt 10 ] || [ $2 -gt 10 ] 
if [ $3 == "dodaj" ] 
then
	wynik=$(($1 + $2))
elif [ $3 == "odejmij" ]
then
	if [ $1 -gt $2 ]
	then
		wynik=$(($1 - $2))
	else
		wynik=$(($2 - $1))
	fi
fi

echo "Wynik klakulacji to: " $wynik
