#! /bin/bash

# readonly

var=12
echo $var
readonly var
var=20
echo $var

function print_hello(){
	echo 'A hello'
}

print_hello
readonly -f print_hello
function print_hello(){
	echo 'B hello'
}
print_hello
