#!/bin/bash

wget "$GETH_BASE_URL/$BINARY"
tar -xzvf $BINARY --strip 1
rm $BINARY

exec ./bootnode -nodekeyhex $NODEKEYHEX
