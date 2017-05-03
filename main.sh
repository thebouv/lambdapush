#!/bin/bash

TARGETFUNCTION="$1"
THISDIR="$(PWD)"

echo $TARGETFUNCTION

rm -f lambda.zip

zip -r lambda.zip .

aws lambda update-function-code --function-name $TARGETFUNCTION --zip-file fileb://$THISDIR/lambda.zip