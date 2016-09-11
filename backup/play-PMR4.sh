#!/bin/bash

:${SAMPLE_RATE:=6.25K}
:${FREQUENCY=446.04375M}
:${SQUELCH=90}
:${GAIN=200}

rtl_fm -f $FREQUENCY -g $GAIN -r 6250 -s $SAMPLE_RATE -l $SQUELCH -M fm - | aplay -t raw -r $SAMPLE_RATE -c 1 -f S16_LE #-D pulse # -D hw:CARD=Loopback,DEV=0

