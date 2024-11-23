#!/bin/bash

if [ -z "$1" ]; then
  exit 1
fi

input="$1"
current=$(date +%s)
start_date_seconds=$(date -d "$input" +%s)
difference=$(( (current - start_date_seconds) / 86400 ))

echo "$difference"
