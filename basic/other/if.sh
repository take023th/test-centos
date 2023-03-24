#! /bin/bash

var=$1
if [ $var = 'blue' ];
then
	echo '進め'
elif [ $var = 'red' ];
then
	echo '止まれ'
else
	echo '待て'
fi

var2=$2
if [ $var2 -eq 10 ];
then
	echo '入力した値は10'
fi
if [ $var2 -lt 20 ]; then
	echo '入力した値は20より小さい'
elif [ $var2 -ge 60 ]; then
	echo '入力した値は60以上'
else
	echo '20以上60未満'
fi
