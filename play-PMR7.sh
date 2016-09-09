#!/bin/bash

:${SAMPLE_RATE:=32000}
:${FREQUENCY=446043750}
:${SQUELCH=90}
:${GAIN=200}

rtl_fm -f $FREQUENCY -g $GAIN -s $SAMPLE_RATE -l $SQUELCH -M fm - | aplay -t raw -r $SAMPLE_RATE -c 1 -f S16_LE
