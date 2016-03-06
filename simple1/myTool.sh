#!/bin/bash

location="`readlink -f \"${0}\"`"

function goDown() {
	echo "${location} received interrupt signal. Bye!"
	exit 0
}

trap goDown 1 2 15

echo "${location} is there for you..."

while true; do
	sleep 5
	echo "I'am still alive."
done
