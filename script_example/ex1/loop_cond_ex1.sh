#!/bin/bash
for i in {1..10}; do
  echo ip$i.dat
  if [ -e "ip$i.dat" ]; then
     ./abc < ip$i.dat > op$i.dat
   else
     echo "Filename "ip$i.dat" does not exist"
   fi
done  
