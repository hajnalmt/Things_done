
while (1) {
	$Time=Get-Date 
	Write-Host "$Time"
	if (($Time.Second -gt 0) -and ($Time.Second -lt 10)){
		break
	}
	Start-Sleep 3;
}