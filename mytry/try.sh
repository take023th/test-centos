#! /bin/bash

# 引数が2つでなければ終了する
if [ $# -ne 2 ]; then
	exit 1;
fi

gen=$1;
age=$2;

# 2つ目の引数が0以上でない場合には終了する
if [ $age -lt 0 ]; then
	exit 1;
fi

# 性別をの処理を行う
if [ $gen =  man ]; then
	my="Man"
elif [ $gen = woman ]; then
	my="Woman"
else
	exit 1
fi

# 年齢の処理を行う
if [ $age -lt 20 ]; then
	age1="Child"
elif [ $2 -ge 20 ] && [ $2 -lt 60 ]; then
	age1="Adult"
else
	age1="Elderly"
fi

echo $my":"$age1
