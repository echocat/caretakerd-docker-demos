#!/bin/bash

location="`readlink -f \"${0}\"`"
sleepDurationInSeconds=10
if [ "${1}" != "" ]; then
	sleepDurationInSeconds="${1}"
fi

echo "${location} sleeps for ${sleepDurationInSeconds} seconds..."

for I in `seq 1 "${sleepDurationInSeconds}"`; do
	sleep 1
	echo $I...
done

echo "${location} sleeps for ${sleepDurationInSeconds} seconds... DONE!"
