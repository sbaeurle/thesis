#!/bin/bash

# directory name

svgs=$(find $1 -name '*.svg')

for file in $svgs
do
	echo $file
	filename="${file%.*}"
	if [ -f $filename.pdf ]; then 
		echo "$filename.pdf bereits vorhanden"
	else
		inkscape -f "$filename.svg" -A "$filename.pdf"
		echo "$filename von svg nach pdf konvertiert"
	fi	
done
