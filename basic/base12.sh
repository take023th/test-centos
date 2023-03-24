#1 /bin/bash

# while文

# 数値のwhile文
n=0

# break continue
while (($n < 10 ));
do
	echo $n
	sleep 1
	if [ $n -eq 5 ]; then
		echo '処理を終了するにはCtrl+Cを入力'
		continue # breakにすると処理が終了する
	fi
	n=$(( n + 1 ))
done
exit 0
while (($n < 10 ));
do
	echo $n
	sleep 1
	n=$(( n + 1 ))
done
exit 0

# 文字列のwhile文
read -p '文字列を入力してください:' var
while [ $var != 'exit' ];
do
	echo '入力した値は' $var
	echo 'exitで処理を終了'
	read -p '文字列を入力してください:' var
done	
