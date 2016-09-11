#!/bin/bash

:${SAMPLE_RATE:=6250}
:${FREQUENCY:=446.04375M}
:${SQUELCH:=90}
:${GAIN:=200}

rtl_fm -f $FREQUENCY -g $GAIN -r 6250 -s $SAMPLE_RATE -l $SQUELCH -M fm - | \
sox -traw -r$SAMPLE_RATE -es -b16 -c1 -V1 - -twav - | \
tee >(aplay -t wav) | \
sox -twav - -tmp3 - | \
ezstream -c ezstream.xml

