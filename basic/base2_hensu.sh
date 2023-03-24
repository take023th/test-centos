#! /bin/bash

var1='変数'
echo $var1
var2=$(cat base1.sh)
echo $var2
echo $BASH
echo $BASH_VERSION
echo $HOME
echo $PWD
var3=`ls`
echo $var3
var4=`echo "できたよ"`
echo $var4
