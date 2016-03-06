#!/bin/bash
#Hajnal Máté
if [ $# -eq 0 ];then
	echo "A program a parameterul kapott kiterjeszteseket nekik megfelelo mappakba helyezi."
fi

if [ $# -eq 1 ] && [ $1 = "--help" ];then
	echo "Hasznalat: ./szetvalogat.sh <kiterjesztes_1> <kiterjesztes_2> ... <kiterjesztes_n>"
	echo " --help Ezt a modot nyitja ki"
fi

count=0;
if [ -f "$PWD/eredmeny.log" ]; then
	rm -f "$PWD/eredmeny.log"
fi

for i in "$@"; do
	result=`find . -maxdepth 1 -name "*.$i" | wc -l`
	if [ $result -ne 0 ]; then
		if [ `find . -type d -name "$i" | wc -l` -eq 0 ]; then
		mkdir $i
		fi
    count=1;
    find . -maxdepth 1 -name "*.$i" -exec mv {} $i \; -exec echo "A {} át lett mozgatva a $i alkönyvtárba." >> eredmeny.log \;
	fi
done

if [ $count -eq 0 ]; then
  echo "Nem tortent mozgatas." >> eredmeny.log
fi
