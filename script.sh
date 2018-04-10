#!/bin/bash



consonents=("b" "c" "d" "f" "g" "h" "j" "k" "l" "m" "n" "p" "q" "r" "s" "t" "v" "w" "x" "y" "z")

vowel=("a" "e" "i" "o" "u")


declare -a name;

#CVCVC 

name_length=5

function generateRandomName(){
for i in `seq 1 $name_length`; do

if [[ $(($i % 2)) == 0 ]]; then

name+=("${vowel[$(((RANDOM % 4)+0))]}")
else

name+=("${consonents[$(((RANDOM % $((${#consonents[@]}-1)) ) +0))]}")
fi
done
for i in ${name[@]}; do
printf $i
done
}




#echo `generateRandomName`

number_of_names=100

for i in `seq 1 $number_of_names`; do
echo `generateRandomName`
#echo $i
done| sort | column
