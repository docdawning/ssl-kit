#!/bin/bash

if [ "$#" -ne 1 ] ; then
	echo "Please supply the domain name: $0 flamingcowpie.net"
	exit -1
fi

DOMAIN=$1
CRT=$DOMAIN.crt
KEY=$DOMAIN.key
PFX="$DOMAIN".pfx

if [ ! -f $CRT ] ; then
	echo "No $CRT found, have you actually copied-in the certificates you were issued?"
	exit -1
fi

if [ ! -f $KEY ] ; then
	echo "No $KEY file found"
	exit -1
fi

if [ -f $PFX ] ; then
	echo "$PFX already exists, exiting."
	exit -1
fi

openssl pkcs12 -inkey $KEY -in $CRT -export -out $PFX
echo "Created $PFX"
