#!/bin/bash


chrome_processes=$(pgrep "Google Chrome")

if [[ -n $chrome_processes ]]; then
  
  timestamp=$(date +"%Y-%m-%d %H:%M:%S")
  
  echo "Chrome closed at $timestamp" >> record.txt
  
  
  killall "Google Chrome"
fi

exit
