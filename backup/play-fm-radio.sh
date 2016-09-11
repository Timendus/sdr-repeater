#!/bin/bash

FREQUENCY=100700000

rtl_fm -f $FREQUENCY -l 10 -M wbfm - | aplay -t raw -r 32000 -c 1 -f S16_LE

