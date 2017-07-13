#!/bin/bash

if [ "$#" -ne 1 ] ; then
	echo "Please supply the domain name: $0 flamingcowpie.net"
	exit -1
fi

DOMAIN=$1
CRT=$DOMAIN.crt
KEY=$DOMAIN.key
PEM="$DOMAIN".pem

if [ ! -f $CRT ] ; then
	echo "No $CRT found, have you actually copied-in the certificates you were issued?"
	exit -1
fi

if [ ! -f $KEY ] ; then
	echo "No $KEY file found"
	exit -1
fi

if [ -f $PEM ] ; then
	echo "$PEM already exists, exiting."
	exit -1
fi

cat $CRT $KEY > $PEM
echo "Created $PEM"
