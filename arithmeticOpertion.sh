#!/bin/bash -x

read -p " Enter the value  " a;
read -p " Enter the value  " b;
read -p " Enter the value  " c;

UC1=$(($a+$b*$c));
echo $UC1;

UC2=$(($a*$b+$c));
echo $UC2;

UC3=$(($c+$a/$b));
echo $UC3;

