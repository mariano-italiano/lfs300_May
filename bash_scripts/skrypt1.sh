#!/bin/bash

if [ -z $1 ] 
then
	echo "Usage: ./skrypt1.sh <nazwaPliku>"
else 

	nazwaPliku=$1

	if [ -e $nazwaPliku ]
	then
		echo "Plik $nazwaPliku istnieje"
	else
		echo "Pliku nie ma na dysku, czy chcesz stowrzyć pusty plik? [tak/nie]"
		read odp
		case "$odp" in
			"tak" | "t") touch $nazwaPliku; echo "Plik $nazwaPliku został utworzony w obecnym katalogu" ;;
			"nie" | "n") echo "Jak chcesz" ;;
			* ) echo "Wpisałeś niepoprawną odpowiedź - podaj tak/nie" ;;
		esac
	fi
fi
