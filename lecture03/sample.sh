#! /bin/bash

for i in `seq 1 1000`;
do
	echo $i >> output.txt;
	sleep 1;
done
