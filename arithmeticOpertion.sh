#!/bin/bash -x

read -p " Enter the value  " a;
read -p " Enter the value  " b;
read -p " Enter the value  " c;

UC1=$(($a+$b*$c));
echo $UC1;
