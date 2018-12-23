#!/bin/bash

BASEDIR=$(dirname $(dirname $0))
TOAXE=${BASEDIR}/rocket-chip/scripts/toaxe.py
AXE=${BASEDIR}/../axe/src/axe
INPUT=$1

grep '^.:' $INPUT > /tmp/axe-trace.txt
python $TOAXE /tmp/axe-trace.txt > /tmp/trace.axe
$AXE check wmo /tmp/trace.axe
rm /tmp/{axe-trace.txt,trace.axe}
