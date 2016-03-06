#!/bin/bash

if [ $# -eq 0 ] || [[ $1 == "--help" ]]; then
	echo "Ez a program a paraméterül adott kiterjesztésű fájlokat a megfelelő mappákba helyezi."
	echo "Használat: ./szetvalogat.sh <kiterjesztes> <kiterjesztes2> ... <kiterjesztesn>"
else
	mozgatva=0
	if [ -f "$PWD/eredmeny.log" ]; then
		rm -f "$PWD/eredmeny.log"
	fi
	for i in $PWD/*; do
		if [[ $i == "$PWD/szetvalogat.sh" ]]; then
			continue
		fi

		mappa=`echo $i | cut -f2 -d"."`

		for para in $@; do
			if [[ $mappa == $para ]]; then
				if [ ! -d $mappa ]; then
					mkdir -p "$PWD/$mappa"
				fi
				fajl=`echo $i | rev | cut -f1 -d"/" | rev`
				mv "$i" "$PWD/$mappa/$fajl"
				echo "A $fajl át lett mozgatva a $mappa alkönyvtárba." >> eredmeny.log
				mozgatva=1
			fi
		done
	done

	if [ $mozgatva -eq 0 ];then
		echo "Nem történt mozgatás." >> eredmeny.log
	fi
fi
