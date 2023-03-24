#! /bin/bash

# for

for var in 1 2 4 5;
do
	echo $var
	sleep 1
done

for command in ls pwd date;
do
	echo $command
	$command
done

for var in `seq 1 2 10`;
do
	echo $var
	if [ $var -eq 3 ]; then
		continue
	fi
	echo $var
	sleep 0.5
done
