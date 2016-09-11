#!/bin/bash

:${PORT:=8080}

netcat localhost $PORT | aplay -t wav

