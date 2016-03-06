#!/bin/bash

location="`readlink -f \"${0}\"`"

function goDown() {
	echo "${location} received interrupt signal. Bye!"
	CPIDS=`pgrep -P $$`
	kill -SIGTERM ${CPIDS} 2> /dev/null
	exit 0
}

trap goDown SIGHUP SIGINT SIGTERM

echo "${location} is there for you..."

while true; do
	sleep 5
	echo "I'am still alive."
done
