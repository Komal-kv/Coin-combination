#!/bin/bash

HHH=0;
HHT=0;
HTH=0;
HTT=0;
THH=0;
THT=0;
TTH=0;
TTT=0;

while [[ $HHH -ne 5 && $HHT -ne 5 && $HTH -ne 5 && $HTT -ne 5 ]]
do
	coin1=$((RANDOM%2));
	a=$coin1;
	coin2=$((RANDOM%2));
	b=$coin2;
	coin3=$((RANDOM%2));
	c=$coin3;
	if [[ $a -eq 0 && $b -eq 0 && $c -eq 0 ]]
	then
		echo "HHH";
		((HHH++));
	elif [[ $a -eq 0 && $b -eq 0 && $c -eq 1 ]]
	then
		echo "HHT";
		((HHT++));
	elif [[ $a -eq 0 && $b -eq 1 && $c -eq 0 ]]
	then
		echo "HTH";
		((HTH++));
	elif [[ $a -eq 0 && $b -eq 1 && $c -eq 1 ]]
	then
		echo "HTT";
		((HTT++));
	fi
done

while [[ $THH -ne 5 && $THT -ne 5 && $TTH -ne 5 && $TTT -ne 5 ]]
do
        coin1=$((RANDOM%2));
        a=$coin1;
        coin2=$((RANDOM%2));
        b=$coin2;
        coin3=$((RANDOM%2));
        c=$coin3;
        if [[ $a -eq 1 && $b -eq 0 && $c -eq 0 ]]
        then
                echo "THH";
                ((THH++));
        elif [[ $a -eq 1 && $b -eq 0 && $c -eq 0 ]]
        then
                echo "THT";
                ((THT++));
        elif [[ $a -eq 1 && $b -eq 1 && $c -eq 0 ]]
        then
                echo "TTH";
                ((TTH++));
        elif [[ $a -eq 1 && $b -eq 1 && $c -eq 1 ]]
        then
                echo "TTT";
                ((TTT++));
        fi
done

echo "HHH wins : $HHH times";
echo "HHT wins : $HHT times";
echo "HTH wins : $HTH times";
echo "HTT wins : $HTT times";
echo "THH wins : $THH times";
echo "THT wins : $THT times";
echo "TTH wins : $TTH times";
echo "TTT wins : $TTT times";

declare -a counter;

counter[0]=HHH;
counter[1]=HHT;
counter[2]=HTH;
counter[3]=HTT;
counter[4]=THH;
counter[5]=THT;
counter[6]=TTH;
counter[7]=TTT;

echo ${counter[@]}

