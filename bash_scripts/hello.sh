#!/bin/bash

fun1(){
echo -n "A teraz cos wiecej - podaj liczbe:"
read number
echo "Podales liczbe = $number"
}


fun2(){
echo -n "Podaj słowo: "
read slowo
echo "Słowo ma długość: ${#slowo}"
}

echo "Hello World!"
fun1
fun2

