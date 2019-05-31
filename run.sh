#!/bin/bash

BINARY=geth-alltools-linux-amd64-1.8.27-4bcc0a37.tar.gz

wget "$GETH_BASE_URL/$BINARY"
tar -xzvf $BINARY --strip 1
rm $BINARY

exec ./bootnode -nodekeyhex $NODEKEYHEX
