#!/bin/bash

URL="$1"

if curl --fail --silent --show-error "$URL" > /dev/null; then
    echo "Application is reachable"
    exit 0
else
    echo "Application is not reachable"
    exit 1
fi