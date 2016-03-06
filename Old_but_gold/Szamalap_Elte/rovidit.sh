#!/bin/bash

if [[ $1 == "--help" ]]; then
	echo "///////////////////////////"
	echo "//#   # ##### #     ###  //"
	echo "//#   # #     #     #  # //"
	echo "//##### ###   #     ###  //"
	echo "//#   # #     #     #    //"
	echo "//#   # ##### ##### #    //"
	echo "///////////////////////////"
	echo "// IPv6 cím rövidítés    //"
	echo "//                       //"
	echo "// Szabványnak megfele-  //"
	echo "// lően lerövidíti az    //"
	echo "// IPv6 típusú címet.    //"
	echo "//                       //"
	echo "// Nevezze át a címeket  //"
	echo "// tartalmazó txt fájlt  //"
	echo "// ipv6.txt-re és tegye  //"
	echo "// a szkript mappájába   //"
	echo "// és futtasa le para-   //"
	echo "// méterek nélkül.       //"
	echo "// az eredmény a termi-  //"
	echo "// nálban lesz látható.  //"
	echo "///////////////////////////"
else
	while read sor; do
		for((i=1;i<=8;i++)); do
			resz=`echo $sor | cut -f$i -d":"` #--output-delimiter=":" does not works

			if [[ $resz == 0000 ]]; 	then
				echo -n ":"
				continue;
			elif [[ $resz == 000* ]]; then
				resz=`echo $resz | cut -c4`
			elif [[ $resz == 00* ]]; then
				resz=`echo $resz | cut -c3-4`
			elif [[ $resz == 0* ]]; then
				resz=`echo $resz | cut -c2-4`
			fi

			echo -n "$resz"
			if [ $i -lt 8 ]; then
				echo -n ":"
			fi
		done
		echo
	done < ipv6.txt
fi
echo 
