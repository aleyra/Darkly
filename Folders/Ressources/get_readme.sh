#!/bin/bash

wget -r -l 4 -e robots=off http://10.12.200.32/.hidden/amcbevgondgcrloowluziypjdh/acbnunauucfplzmaglkvqgswwn/ayuprpftypqspruffmkuucjccv/

level0=10.12.200.32/.hidden

./index_to_list_folder.sh $level0

nb_folder0=$(ls -l $level0 | grep -e "^d" | wc -l)

for (( i=1; i<=$nb_folder0; i++ ))
    do
        read folder0
        level1=$level0/folder0
        ./index_to_list_folder.sh $level1
        nb_folder1=$(ls -l $level1 | grep -e "^d" | wc -l)
        for (( j=1; j<=$nb_folder1; j++ ))
            do
                #a continuer...
            done < $level1/list_folder.txt
    done < $level0/list_folder.txt

