#!/bin/sh
res=""
if [ $1 -le 0 ] || [ $2 -le 0 ]; then
	echo "The arguments 1 and 2 must be numbers greater than 0"
	exit 0
fi

for i in $(seq 1 $1); do
	for j in $(seq 1 $2); do
		res=$res$i"*"$j"="`expr $i \* $j`" "
	done
	echo $res; res=""
done
exit 0

