#!/bin/sh

while true; do
#   git pull
  sleep 60
#   simulate file change
  echo "use strict" >> "/server/foo.js"
  echo "Written to file"
done