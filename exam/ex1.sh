#! /bin/bash

if [ $# -ne 2 ]; then
	exit 1;
fi

gender=$1
age=$2

if [ $age -lt 0 ]; then
	exit 1;
fi

if [ $gender = 'man' ]; then
	if [ $age -lt 20 ]; then
		echo 'Man:Child';
	elif [ $age -lt 60 ]; then
		echo 'Man:Adult';
	else
		echo 'Man:Elderly';
	fi
elif [ $gender = 'woman' ]; then
	if [ $age -lt 20 ]; then
		echo 'Woman:Child';
	elif [ $age -lt 60 ]; then
		echo 'Woman:Adult';
	else
		echo 'Woman:Elderly';
	fi
else
	exit 1;
fi

