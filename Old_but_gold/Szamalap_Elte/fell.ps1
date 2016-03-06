if($args.Count -eq 0){
	$args[0]=Read-Host "Adj meg egy parametert, sok x-et fogok kiirni"
}
if ($args[0] -eq "--help") {
	Write-Host "Ez egy powershell ZH miatt keszult script"
	Write-Host " Irta: Hajnal Mate"
}
elseif ([int]$args[0] -ge 0) {
	[int]$N = $args[0]
	$counter = 0;
	for ($i=0;$i -lt $N;$i++) {
		$Rand=Get-Random -Maximum 50 -Minimum 0
		for($j=0; $j -lt $Rand; $j++){
			Write-Host -NoNewline "x"
			$counter = $counter+1
		}
		Write-Host ""
	
	}
	Write-Host "$N volt a megadott szam es $counter -nyi x volt"
}

