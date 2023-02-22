#!/bin/bash

maxnum=`find . -maxdepth 1 -regex "\./$USER[0-9][0-9]*" | sed "s/\.\/$USER//" | sort -nr | head -n 1`

for i in `seq $(($maxnum+1)) $(($maxnum+25))`; do
   touch $USER$i
done