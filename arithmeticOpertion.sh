#!/bin/bash -x

read -p " Enter the value  " a;
read -p " Enter the value  " b;
read -p " Enter the value  " c;

declare -A ucDictionary

declare -a ucArray


UC1=$(($a+$b*$c));
echo $UC1;

UC2=$(($a*$b+$c));
echo $UC2;

UC3=$(($c+$a/$b));
echo $UC3;

UC4=$(($a%$b+$c));
echo $UC4;


#storeinDictionary

for (( i=1 ; i<=4 ; i++ ))
do
        ucDictionary[$i]=$((UC$i))
done


#storeinArray
count=0

for ((   j=1 ; j<=4 ; j++ ))
do

      {ucArray[@]}=${ucDictionary[$j]}
      counter=$((count+1));
      ((count++));
done

#sortingDecending
printf '%s\n' "${ucDictionary[@]}" | sort -nr

#Ascending

printf '%s\n' "${ucDictionary[@]}" | sort -nr

echo ${#ucArray[@]}

for ((k = 0; k<5; k++))
do

    for((l = 0; l<(($counter-1)); l++))
    do

        if [ ${ucArray[l]} -gt ${ucArray[$((l+1))]} ]
        then

            temp=${ucArray[l]}
            ucArray[$l]=${ucArray[$((l+1))]}
            ucArray[$((l+1))]=$temp
        fi
    done
done
