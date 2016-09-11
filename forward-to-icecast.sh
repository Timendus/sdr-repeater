#!/bin/bash

:${PORT:=8080}

netcat localhost $PORT | \
sox -twav - -tmp3 - | \
# lame -b 32 -m m - | \
ezstream -c ezstream.xml

