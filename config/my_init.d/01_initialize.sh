#!/bin/bash

UP="/app/config/up.sh"

mkdir -p /app/data/logs

if [ -f $UP ]
then
	echo "    Running startup script /app/config/up.sh"
	chmod +x $UP && chmod 755 $UP && eval $UP;
fi