#Hajnal Máté
if($args.Count -eq 0){
	Write-Host "A program a parameterul kapott kiterjeszteseket nekik megfelelo mappakba helyezi."
}
if( ($args.Count -eq 1) -AND ($args[0] -eq "--help") ){
	Write-Host "Hasznalat: ./szetvalogat.sh <kiterjesztes_1> <kiterjesztes_2> ... <kiterjesztes_n>"
	Write-Host " --help Ezt a modot nyitja ki"
}


$PWD=Get-Location
$count=0

if( Test-Path "$PWD\eredmeny.log" ){
		Remove-Item "$PWD\eredmeny.log"
}

else{
	$PWD=Get-Location
	if( Test-Path "$PWD\eredmeny.log" ){
		Remove-Item "$PWD\eredmeny.log"
	}
}

$files = Get-ChildItem "$PWD\"
	
for($param=0;$param -lt $args.Count;$param++){
	$c=$args[$param]
	$Result=(Get-ChildItem -Path "*.$c" | Measure-Object).Count
	if ($Result -ne 0){
		if( !(Test-Path "$PWD\$c") ){
					New-Item "$PWD\$c" -type directory | Out-Null
		}
	$count=1
	$files=Get-ChildItem -Path "*.$c"
	foreach($file in $files){
		Move-Item -path "$file" -destination "$PWD\$c"
		Add-Content "$PWD\eredmeny.log" "A $file át lett mozgatva a $c alkönyvtárba."
		}
	}
}

if ($count -eq 0){
  Add-Content "$PWD\eredmeny.log" "Nem tortent mozgatas." 
}

