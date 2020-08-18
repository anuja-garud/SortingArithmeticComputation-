#!/bin/bash -x

read -p " Enter the value  " a;
read -p " Enter the value  " b;
read -p " Enter the value  " c;

declare -A ucDictionary

UC1=$(($a+$b*$c));
echo $UC1;

UC2=$(($a*$b+$c));
echo $UC2;

UC3=$(($c+$a/$b));
echo $UC3;

UC4=$(($a%$b+$c));
echo $UC4;


for (( i=1 ; i<=4 ; i++ ))
do
        ucDictionary[$i]=$((UC$i))
done
