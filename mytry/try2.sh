#! /bin/bash

# 現在いるディレクトリのファイル一覧を表示する

ls -l --color=auto

# 1回目の標準入力
 read -p 'ファイル名を入力してください:' input1

# ファイル存在チェックと追記処理
if [ -f $input1 ]; then # 標準入力のファイル存在チェック
	read -p 'ファイルに追記する値を入力してください:' input2
	echo $input2 >> $input1 # ファイルが存在したら2回目の標準入力を追記
	echo $input1 "に" $input2 "を追記しました"
else
	echo 'ファイルが存在しません' # エラーを返す
fi
