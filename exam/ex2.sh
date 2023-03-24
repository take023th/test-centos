#! /bin/bash

ls

read -p 'ファイル名を入力してください:' file_name
read -p 'ファイルに追記する値を入力してください:' input_val

if [ -f $file_name ]; then
	echo $input_val >> $file_name;
else
	echo 'ファイルが存在しません'
fi	
