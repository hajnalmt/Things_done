if( ($args.Count -eq 0) -or ( $args[0] -match "--help" ) ){
	Write-Host "Ez a program a paraméterül adott kiterjesztésû fálokat a megfelelõ mappákba helyezi."
	Write-Host "Használat: ./szetvalogat.sh <kiterjesztes> <kiterjesztes2> ... <kiterjesztesn>"
}else{
	$PWD=Get-Location
	$mozgatva=0
	if( Test-Path "$PWD\eredmeny.log" ){
		Remove-Item "$PWD\eredmeny.log"
	}
	$fajlok = Get-ChildItem "$PWD\"
	foreach($fajl in $fajlok){
		$fajlnev=$fajl.FullName.split('\')[-1]
		$kiterjesztes=$fajlnev.split('.')[-1]
		if( $fajlnev -match "szetvalogat.ps1" ){
			continue
		}

		for($para=0;$para -lt $args.Count;$para++){
			if( $kiterjesztes -match $args[$para]){
				if( !(Test-Path "$PWD\$kiterjesztes") ){
					New-Item "$PWD\$kiterjesztes" -type directory | Out-Null
				}
				Move-Item "$fajl" "$PWD\$kiterjesztes\$fajlnev"
				Add-Content "$PWD\eredmeny.log" "A $fajlnev át lett mozgatva a $kiterjesztes alkönyvtárba."
				$mozgatva=1
			}
		}
	}

	if( $mozgatva -eq 0 ){
		Add-Content "$PWD\eredmeny.log" "Nem történt mozgatás."
	}
}
