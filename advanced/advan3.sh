#! /bin/bash

# PID
# echo PID is $$
# sleep 100
function cleanup(){
	echo "割り込みコマンドが発生しました"
	rm ./tmp_*.txt
	exit 1
}
function stop_15(){
	echo "kill 15でストップしました"
	exit 1
}

echo $$ > tmp_$$.txt

trap "cleanup" 0 2
trap "stop_15" 15

for i in `seq 1 10`;
do
	echo $i
	sleep 1
done
