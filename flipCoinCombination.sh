#!/bin/bash

HH=0;
HT=0;
TH=0;
TT=0;

while [[ $HH -ne 5 && $HT -ne 5 && $TH -ne 5 && $TT -ne 5 ]]
do
	coin1=$((RANDOM%2));
	coin2=$((RANDOM%2));
	if [[ $coin1 -eq 0 && $coin2 -eq 0 ]]
	then
		echo "HH";
		((HH++));
	elif [[ $coin1 -eq 0 && $coin2 -eq 1 ]]
	then
		echo "HT";
		((HT++));
	elif [[ $coin1 -eq 1 && $coin2 -eq 0 ]]
	then
		echo "TH";
		((TH++));
	elif [[ $coin1 -eq 1 && $coin2 -eq 1 ]]
	then
		echo "TT";
		((TT++));
	fi
done

echo "HH wins : $HH times";
echo "HT wins : $HT times";
echo "TH wins : $TH times";
echo "TT wins : $TT times";

declare -a counter;

counter[0]=HH;
counter[1]=HT;
counter[2]=TH;
counter[3]=TT;

echo ${counter[@]}

#percentage of singlet combination
total_count=$(($HH + $HT + $TH + $TT ));
echo "total no of wins : $total_count";

percentage_of_HH=`echo $HH $total_count 100|awk '{ print ($1/$2)*$3 }'`;
echo "percentage of HH wins : $percentage_of_HH";

percentage_of_HT=`echo $HT $total_count 100|awk '{ print ($1/$2)*$3 }'`;
echo "percentage of HT wins : $percentage_of_HT";

percentage_of_TH=`echo $TH $total_count 100|awk '{ print ($1/$2)*$3 }'`;
echo "percentage of TH wins : $percentage_of_TH";

percentage_of_TT=`echo $TT $total_count 100|awk '{ print ($1/$2)*$3 }'`;
echo "percentage of TT wins : $percentage_of_TT";
