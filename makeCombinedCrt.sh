#!/bin/bash

if [ "$#" -ne 1 ] ; then
	echo "Please supply the domain name: $0 battlekitty.com"
	exit -1
fi

DOMAIN=$1
CRT=$DOMAIN.crt
BUNDLE=$DOMAIN.ca-bundle

if [ ! -f $CRT ] ; then
	echo "No $CRT found, have you actually copied-in the certificates you were issued?"
	exit -1
fi

if [ ! -f $BUNDLE ] ; then
	echo "No $BUNDLE file found"
	exit -1
fi

cat $CRT $BUNDLE > "$DOMAIN"_combined.crt
echo "Created combined.crt"
