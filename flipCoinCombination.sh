#!/bin/bash

headcount=0;
tailcount=0;

while [[ headcount -ne 21 && tailcount -ne 21 ]]
do
	coin=$((RANDOM%2))
	if [[ $coin -eq 0 ]]
	then
		echo "HEAD";
		((headcount++));
	else
		echo "TAIL";
		((tailcount++));
	fi
done

echo "head wins : $headcount times";
echo "tail wins : $tailcount times";

declare -a counter;

counter[0]=head;
counter[1]=tail;

echo ${counter[@]}

#percentage of singlet combination
total_count=$(( $headcount + $tailcount ));
echo "total no of wins : $total_count";

percentage_of_head=`echo $headcount $total_count 100|awk '{ print ($1/$2)*$3 }'`;
echo "percentage of head wins : $percentage_of_head";

percentage_of_tail=`echo $tailcount $total_count 100|awk '{ print ($1/$2)*$3 }'`;
echo "percentage of tail wins : $percentage_of_tail";
