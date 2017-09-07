#!/bin/bash
if [ "$#" -ne 1 ] ; then
	echo "You have to give an argument for the domain name, like $0 juggledgosling.com"
	exit 1
fi

DOMAIN=$1

if [ -f "$DOMAIN.key" ] ; then
	echo "The file $DOMAIN.key exists and would be overwriten by this, no deal. You'll have to delete that yourself"
	exit 1
fi

if [ -f "$DOMAIN.crt" ] ; then
	echo "The file $DOMAIN.crt exists. Please rename/move/delete it. I don't want to write over your existing stuff"
	exit 1
fi

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout $DOMAIN.key -out $DOMAIN.crt

echo "Created self-signed $DOMAIN.key and $DOMAIN.crt. Have fun with that"
exit 0
