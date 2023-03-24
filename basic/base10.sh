#! /bin/bash

echo "20.5+5" | bc #25.5
echo "20.5*5" | bc #102.5

echo "scale=10;2/3" | bc -l

echo "scale=10;sqrt(2)" | bc -l

echo "$1 + $2" | bc
