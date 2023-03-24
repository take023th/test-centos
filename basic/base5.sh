#! /bin/bash

# read var
# echo var=$var

read -p '変数を入力してください：var = ' var

echo var = $var


read -sp 'password: ' password
echo password = $password
read -a names
echo names = ${names[@]}
echo names = ${names[0]}

