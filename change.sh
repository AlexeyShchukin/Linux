#!/bin/bash

treshold=70

disk_usage=$(df -h / | grep / | awk '{print $5}' | sed 's/%//')

if [ "$disk_usage" -gt "$treshold" ];
   then
      echo "Занято более $treshold"
      sudo du -ah / 2>/dev/null | sort -rh | head -n 10	
   else
     echo "Занято мение $treshold"
fi

