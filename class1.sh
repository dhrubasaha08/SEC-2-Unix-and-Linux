#!/bin/bash

echo "give filename containing student data"

read filename
echo filename

if [! -f "$filename"] then
echo " student list not found"
exit 0
else
    while read -r line; do
    strn=('echo $line' | tr ';' ' ') 
#tr replace function

    echo ${strn[1]}" "${strn[0]}
done < $filename

fi
