#!/bin/bash

dir1=$1
dir2=$2
#echo "dir1=${dir1}"
#IFS=$'\n'
#for file in $(grep -Ilsr -m 1 '.' "$dir1"); do
#   diff -q "$file" "${file/${dir1}/${dir2}}"
#done
echo "compariing ${dir1} <--> ${dir2}"
diff -r ${dir1} ${dir2} | sed '/Binary\ files\ /d' 
