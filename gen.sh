#!/bin/sh

set -e

for BLEM in {1..1000}; do
	AIS=`shuf -e 'dt.rand' 'dt.stei' 'dt.ste' 'dt.sdc' | tr "\n" " "`
	echo "$AIS"
	python3 scripts/dicewars-ai-only.py --ai $AIS > /dev/null
done
