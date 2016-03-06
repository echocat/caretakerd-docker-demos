#!/bin/bash

location="`readlink -f \"${0}\"`"
sleepDurationInSeconds=10
if [ "${1}" != "" ]; then
	sleepDurationInSeconds="${1}"
fi

function goDown() {
	echo "${location} received interrupt signal. Bye!"
	CPIDS=`pgrep -P $$`
	kill -SIGTERM ${CPIDS} 2> /dev/null
	exit 0
}

trap goDown SIGHUP SIGINT SIGTERM

echo "${location} sleeps for ${sleepDurationInSeconds} seconds..."

for I in `seq 1 "${sleepDurationInSeconds}"`; do
	sleep 1
	echo $I...
done

echo "${location} sleeps for ${sleepDurationInSeconds} seconds... DONE!"
