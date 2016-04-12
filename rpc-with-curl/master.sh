#!/bin/sh

curl \
	-sSk \
	-X POST \
	--cert /var/run/caretakerd.master.pem \
	https://localhost:57955/service/peasant/restart
exit $?
