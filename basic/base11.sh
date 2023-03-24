#! /bin/bash

var=$1
case $var in
	'blue' )
		echo 'GO';;
	'red' )
		echo 'STOP';;
	'yellow' )
		echo 'WAIT';;
	*)
		echo 'Wrong Color';;
esac

var2=$2
case $var2 in
	[a-z] )
		echo 'a-zまでの値です';;
	[A-Z] )
		echo 'A-Zまでの値です';;
	[0-9] )
		echo '数値です';;
esac
