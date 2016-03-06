if( ($args.Count -gt 0) -and ($args[0] -eq "--help") ){
	Write-host "///////////////////////////"
	Write-host "//#   # ##### #     ###  //"
	Write-host "//#   # #     #     #  # //"
	Write-host "//##### ###   #     ###  //"
	Write-host "//#   # #     #     #    //"
	Write-host "//#   # ##### ##### #    //"
	Write-host "///////////////////////////"
	Write-host "// IPv6 cím rövidítés    //"
	Write-host "//                       //"
	Write-host "// Szabványnak megfele-  //"
	Write-host "// lően lerövidíti az    //"
	Write-host "// IPv6 típusú címet.    //"
	Write-host "//                       //"
	Write-host "// Nevezze át a címeket  //"
	Write-host "// tartalmazó txt fájlt  //"
	Write-host "// ipv6.txt-re és tegye  //"
	Write-host "// a szkript mappájába   //"
	Write-host "// és futtasa le para-   //"
	Write-host "// méterek nélkül.       //"
	Write-host "// az eredmény a termi-  //"
	Write-host "// nálban lesz látható.  //"
	Write-host "///////////////////////////"
} else {
	$szoveg=Get-Content ipv6.txt
	foreach ($sor in $szoveg){
		$resz=$sor.split(":")
		for($i=0;$i-le7;$i++){
			Write-Host -NoNewline $resz[$i].trimstart("0")
			if($i -ne 7){
				Write-Host -NoNewline ":"
			}
		}
		Write-Host ""
	}
	Write-Host ""
}
