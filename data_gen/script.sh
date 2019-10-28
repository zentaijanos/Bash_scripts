#!/bin/bash

head -n 1 data.csv >> header.csv
sed '1d' data.csv > body.csv

> file.csv

cat header.csv >> file.csv

for run in {1..100}
do
	cat body.csv >> file.csv
done


rm header.csv
rm body.csv

ls -sh