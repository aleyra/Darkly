#!/bin/bash

cat $1/index.html | grep href > $1/list_folder.txt
sed -e '1d' -e '$d' $1/list_folder.txt > $1/tmp.txt
cut -c10- $1/tmp.txt > $1/list_folder.txt
cut -d\/ -f1 $1/list_folder.txt > $1/tmp.txt
mv $1/tmp.txt $1/list_folder.txt