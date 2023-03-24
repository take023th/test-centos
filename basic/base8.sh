#! /bin/bash

# if [ -e 'sample' ]; # ディレクトリかファイルが存在する
# if [ -d 'sample' ]; # ディレクトリが存在する
if [ -f 'sample' ]; # ファイルが存在する
then
	echo 'sampleが存在します'
	rm sample
fi

if [ 'sample1' -nt 'sample2' ]; then
	echo 'sample1はsample2より新しい'
elif [ 'sample1' -ot 'sample2' ]; then
	echo 'sample1はsample2より古い'
fi
