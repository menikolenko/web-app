#!/bin/bash

while true;

do

  apicode=$(curl -I http://api:7001/ 2>/dev/null | head -n 1 | cut -d$' ' -f2)

  if
  [ $apicode -eq 200 ]
  then
  apiresult=$(curl http://api:7001/)
  (echo -e "${apiresult}";) | nc -l -p 8001 -q 1
  else
  echo -e "HTTP/1.1 200 OK\n\n Hello" | nc -l -p 8001 -q 1
  fi

done
