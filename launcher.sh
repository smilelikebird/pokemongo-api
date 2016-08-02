#!/bin/bash 
COUNTER=0
while [  true ]; do

	input="pogo/logs/lastpos.log"
	line=""
	while IFS= read -r var
	do
	  $line="$var"
	done < "$input"

	echo "lauching demo.py ... $line"
	python pogo/demo.py -u "billa95" -p "Qzerty77" -a "ptc" -l '$line' &
	wait
	echo "end of demo.py .."
done