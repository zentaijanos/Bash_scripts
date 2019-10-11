#!/bin/bash

#echo 'Total Args:' $#
#echo 'All arg val:' $@
#echo $1,$2,$3,$4
# 1:N, 2:1st,3:2ndFile, 4:Output
time 

seq $1 | xargs -n 1 -P 10 cat $2 $3 >> $4

 

echo \
echo 'Input size:'
stat --printf="%s" $3
echo \

echo 'Lines:'
wc -l $4
echo \

echo 'Size:'
stat --printf="%s" $4
echo \

