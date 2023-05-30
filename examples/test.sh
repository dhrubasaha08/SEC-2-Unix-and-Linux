#!/bin/sh
wget https://github.com/psych-d/graphics.h/raw/main/archive/libgraph-1.0.2.tar.gz
tar -xvf libgraph-1.0.2.tar.gz
cd libgraph-1.0.2 && echo "OK" > test.txt && value=`cat test.txt` && echo "$value"  && cd .. && echo "Success"