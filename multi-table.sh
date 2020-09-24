#!/bin/sh
res=""
for i in $(seq 1 $1); do
	for j in $(seq 1 $2); do
		res=$res$i"*"$j"="`expr $i \* $j`" "
	done
	echo $res; res=""
done
exit 0
