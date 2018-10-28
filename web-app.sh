#!/bin/bash

while true;
do (echo -e "HTTP/1.1 200 OK\nContent-Type: text/html\n\n Hello from APP";) | nc -l -p 8001
done
