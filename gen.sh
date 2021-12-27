#!/bin/sh

set -e

for BLEM in {1..100}; do
	AIS=`shuf -e 'dt.rand' 'dt.stei' 'dt.ste' 'dt.sdc' | tr "\n" " "`
	echo "$AIS"
	python3 scripts/dicewars-ai-only.py --ai $AIS -l logs/ -d
done
