#!/bin/bash

files=($(find $1 -type f ))
for file in ${files[*]}
do
    colordiff -u $file $2/$file
done
