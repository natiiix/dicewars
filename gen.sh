#!/bin/sh

set -e

while [ ! -f ./stop ]; do
	#AIS=`shuf -e 'dt.rand' 'dt.stei' 'dt.ste' 'dt.sdc' | tr "\n" " "`
	#echo "$AIS"
	#python3 scripts/dicewars-ai-only.py --ai $AIS > /dev/null

	#AIS=`shuf -e 'kb.stei_adt' 'kb.stei_at' 'kb.stei_adt2' 'kb.stei_at2' | tr "\n" " "`
	AIS=`shuf -e 'kb.stei_adt' 'kb.stei_at' 'dt.ste' 'dt.stei' | tr "\n" " "`
	echo "$AIS"
	rm logs/* && python3 scripts/dicewars-ai-only.py --ai $AIS -l ./logs/
done
rm ./stop
