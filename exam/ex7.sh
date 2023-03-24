#! /bin/bash

if [ $# -ne 1 ]; then
	echo 'argument is wrong'
	exit 1
fi

function stop_exam7(){
	rm exam7.lock
	exit 0
}


if [ $1 = 'start' ]; then
	if [ -f 'exam7.lock' ]; then
		echo 'Process if already runnning'
		exit 0
	else
		echo $$ > exam7.lock
		trap "stop_exam7" 2 15
		for i in `seq 1 1000`;
		do
			echo $i >> output_$$.txt
			sleep 1
		done
		rm exam7.lock
		exit 0
	fi
elif [ $1 = 'stop' ]; then
	if [ -f 'exam7.lock' ]; then
		PID=-1
		while read p;
		do
			PID=$p
		done < 'exam7.lock'
		kill -15 $PID
	else
		echo 'process is not running'
		exit 0
	fi

elif [ $1 = 'status' ]; then
	if [ -f 'exam7.lock' ]; then
		PID=-1
		while read p;
		do
			PID=$p
		done < 'exam7.lock'
		echo 'Process is runnning pid='$PID
	else
		echo 'Process in not runnning'
	fi
else
	echo 'wrong argument'
	exit 1
fi
