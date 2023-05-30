#!/bin/bash
#length of string
echo "Give the array element"
read array
read -ra lst <<< $array
let len=${#lst[@]}
if [ len == 0 ]; then
echo "list is not empty"
else
echo "number of elements are" $len
for (i=0; i<len ;i++) #loop in c style
do
    echo ${lst[$i]}
    filename="${lst[$i]}.txt"
    if ! [-e $filename ]; then
    echo "file "$"

