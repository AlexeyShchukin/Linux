#!/usr/bin/env bash

URL=$1

while true;
  do
    PING=$(ping -n 1 $URL)
    if [ $? -eq 0 ]; then
      MS=$(echo "$PING" | awk -F "=" '{print $2}' | head -3 | tail -1 | sed 's/ms//')
      if [ $MS -gt 100 ]; then
      echo 'Ping time exceeds 100ms'
      fi
      COUNT=0
    else
      ((COUNT++))
    fi
    if [ $COUNT -eq 3 ]; then
        echo 'Failed to ping for 3 consecutive packet attempts'
    fi
    sleep 1
  done
