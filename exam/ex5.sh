#! /bin/bash

function calcurate_sum(){
	sum=0
	while read p;
	do
	sum=$(( sum + p ))
	done < $1
	echo SUM: $sum
	exit 0
}

function calcurate_avg(){
	sum=0
	count=0
	while read p;
	do
		sum=$(( sum + p ))
		count=$(( count + 1 ))
	done < $1
	echo AVG: $(( sum / count ))
	exit 0
}

function calcurate_min(){
	min=101
	while read p;
	do
		if [ $min -gt $p ]; then
			min=$p
		fi
	done < $1
	echo MIN: $min
	exit 0
}

function calcurate_max(){
	max=0
	while read p;
	do
		if [ $max -lt $p ]; then
			max=$p
		fi
	done < $fh
	echo MAX: $max
	exit 0
}

read -p 'ファイル名を入力してください:' fh
if [ -f $fh ]; then
	read -p 'sum, avg, min, max, exit' command
	if [ $command = 'sum' ]; then
		calcurate_sum $fh
	elif [ $command = 'avg' ]; then
		calcurate_avg $fh
	elif [ $command = 'min' ]; then
		calcurate_min $fh
	elif [ $command = 'max' ]; then
		calcurate_max $fh
	elif [ $command = 'exit' ]; then
		exit 0
	else
		echo 'そのようなコマンドは存在しません'
		exit 1
	fi
else
	echo 'ファイルが存在しません'
	exit 1
fi
