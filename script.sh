#!/bin/bash

NAME=$1
LASTNAME=$2
MARRIEDNAME=$3
SHOW=$4

if [  "$SHOW" = "true" ]; then
  echo "Hello, $NAME $LASTNAME of $MARRIEDNAME.."
else
  echo "If yoou want to see the name, then please mark the SHOW opt"
fi
