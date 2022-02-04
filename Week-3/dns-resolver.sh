#!/bin/bash
# Storyline: DNS resolver for Eth Hack Activity 3.1
# This code was written by Jason Quiroga

i=1

while [ $i -le 254 ]; do
	host="$1.$i"
	
	bash -c "nslookup $host $2" ?>/dev/null
	success=$?
	if [[ $success -eq 0 ]]; then
		nslookup $host $2
	fi
	((i++))
	done
