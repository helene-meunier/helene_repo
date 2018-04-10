#!/bin/bash



consonents=("b" "c" "d" "f" "g" "h" "j" "k" "l" "m" "n" "p" "q" "r" "s" "t" "v" "w" "x" "y" "z")

vowel=("a" "e" "i" "o" "u")


name=();

#CVCVC 

name_length=5

for i in `seq 1 $name_length`; do

if [[ $(($i % 2)) == 0 ]]; then
	$name+="${vowel[$(( (RANDOM % 4 ))]}"

else
	$name+="${consonent[$(( (RANDOM % ${#consonents[@]}) )]}"
fi

done

echo $name

