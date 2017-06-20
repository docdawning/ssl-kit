#!/bin/bash
DOMAIN=$1

if [ "$#" -ne 1 ] ; then
	echo "Give the domain as a parameter: $0 donkeykong.com"
	exit -1
fi

openssl genrsa -out $DOMAIN.key 4096

echo "Created Private Key: $DOMAIN.key"
