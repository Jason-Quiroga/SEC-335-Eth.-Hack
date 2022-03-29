#!/bin/bash
# Storyline: Port Scanner for Eth Hack Activity 3.1
# This code was written by Jason Quiroga

echo "host,port"

i=1

while [ $i -le 254 ]; do
	host="$1.$i"
	#echo $host
	
	timeout .1 bash -c "echo >/dev/tcp/$host/$2" 2>/dev/null &&
	echo "$host, $2"
	((i++))
	done
