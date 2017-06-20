#!/bin/bash
if [ "$#" -ne 1 ] ; then
	echo "Please give the domain as a parameter: $0 battlepidgeon.com"
	exit -1
fi

DOMAIN=$1
DOMAIN_KEY=$DOMAIN.key
if [ ! -f $DOMAIN_KEY ] ; then
	echo "$DOMAIN_KEY not found, perhaps you haven't created a private key yet?"
	exit -1
fi

openssl req -new -key $DOMAIN_KEY -out $DOMAIN.csr
echo "Created $DOMAIN.csr"
