# To avoid language errors add culture
[threading.thread]::CurrentThread.CurrentCulture = 'en-US'

# Date settings
$CURRENT_DATE = Get-Date
$CURRENT_YEAR = $CURRENT_DATE.Year
$CURRENT_MONTH = $CURRENT_DATE.Month
$CURRENT_DAY = $CURRENT_DATE.Day
$CURRENT_HOUR = $CURRENT_DATE.Hour
$CURRENT_MINUTE = $CURRENT_DATE.Minute
$CURRENT_SECOND = $CURRENT_DATE.Second
switch ($CURRENT_MONTH)
	{
		1 {$CURRENT_MONTH_STRING = "januar"}
		2 {$CURRENT_MONTH_STRING = "februar"}
		3 {$CURRENT_MONTH_STRING = "március"}
		4 {$CURRENT_MONTH_STRING = "április"}
		5 {$CURRENT_MONTH_STRING = "május"}
		6 {$CURRENT_MONTH_STRING = "június"}
		7 {$CURRENT_MONTH_STRING = "július"}
		8 {$CURRENT_MONTH_STRING = "augusztus"}
		9 {$CURRENT_MONTH_STRING = "szeptember"}
		10 {$CURRENT_MONTH_STRING = "október"}
		11 {$CURRENT_MONTH_STRING = "november"}
		12 {$CURRENT_MONTH_STRING = "december"}
	}

# Personal settings
$NAME = "XXXXXX"
$COST_CENTRE = "XXXXXX"
$PROJECT_NUMBER = "XXXXXX"
$USERNAME = [Environment]::Username

# Open excel document in the current directory and load the right page
# Maybe this can be changed in the future because it's slow
$EXCEL_PATH = "$($PWD)\Munkaido_nyilv_$($CURRENT_YEAR).xlsx"
$EXCEL_OBJECT = New-Object -ComObject Excel.Application
$EXCEL_OBJECT.Visible = $false
$EXCEL_OBJECT.DisplayAlerts = $false
$WORKBOOK = $EXCEL_OBJECT.WorkBooks.Open($EXCEL_PATH)
$PAGE = "$($CURRENT_YEAR)_$($CURRENT_MONTH_STRING)"
$WORKSHEET = $WORKBOOK.Worksheets | Where-Object {$_.Name -eq "$PAGE"}
# Write-Host "$($PAGE); név: $($NAME); koltshely: $($COST_CENTRE)"

# Upload the page with the personal settings
$WORKSHEET.Cells.Item(2,41) = "$NAME"
$WORKSHEET.Cells.Item(2,48) = "$COST_CENTRE"
$WORKSHEET.Cells.Item(5,64) = "$PROJECT_NUMBER"

# Write time datas into the right cells
$TIME1 = $WORKSHEET.Cells.Item(6+$($CURRENT_DAY),47).Text
$TIME2 = $WORKSHEET.Cells.Item(6+$($CURRENT_DAY),48).Text
$TIME3 = $WORKSHEET.Cells.Item(6+$($CURRENT_DAY),50).Text
If($TIME1 -eq "0:00") {
	$WORKSHEET.Cells.Item((6+$CURRENT_DAY),47) = "$($CURRENT_HOUR):$($CURRENT_MINUTE)"
} 
Elseif($TIME2 -eq "0:00"){
	$WORKSHEET.Cells.Item((6+$CURRENT_DAY),48) = "$($CURRENT_HOUR):$($CURRENT_MINUTE)"
} 
Elseif($TIME3 -eq "0:00"){
	$WORKSHEET.Cells.Item((6+$CURRENT_DAY),50) = "$($CURRENT_HOUR):$($CURRENT_MINUTE)"
}
Else {
	$WORKSHEET.Cells.Item((6+$CURRENT_DAY),51) = "$($CURRENT_HOUR):$($CURRENT_MINUTE)"
}

# The script runs on startup and shut down both
$CHECK_FILE_START_UP = "C:\Windows\System32\GroupPolicy\Machine\Scripts\Startup\work.cmd" 
$CHECK_FILE_SHUT_DOWN = "C:\Windows\System32\GroupPolicy\Machine\Scripts\Shutdown\work.cmd" 
$CONTENT_START_UP = "cd %USERPROFILE%\Desktop\Work_registration
PowerShell -Command 'Set-ExecutionPolicy Unrestricted'
PowerShell $($PWD)\work.ps1"
$CONTENT_SHUT_DOWN = "cd %USERPROFILE%\Desktop\Work_registration
PowerShell -Command 'Set-ExecutionPolicy Unrestricted'
PowerShell $($PWD)\work.ps1"
$START_UP_FILE_EXISTS = Test-Path $CHECK_FILE_START_UP
$SHUT_DOWN_FILE_EXISTS = Test-Path $CHECK_FILE_SHUT_DOWN
If ($START_UP_FILE_EXISTS -eq $False) {
	Set-Content $CHECK_FILE_START_UP "$CONTENT_START_UP" -Encoding ASCII
}
If ($SHUT_DOWN_FILE_EXISTS -eq $False) {
	Set-Content $CHECK_FILE_SHUT_DOWN "$CONTENT_SHUT_DOWN" -Encoding ASCII
}

# Break function (the script runs if work_break command is executed anywhere)
$CHECK_FOLDER_BREAK = "C:\Windows\System32\GroupPolicy\Machine\Scripts\Workbreak"
$CHECK_FILE_BREAK = "$($CHECK_FOLDER_BREAK)\work.cmd" 
$CONTENT_BREAK = "cd %USERPROFILE%\Desktop\Work_registration
PowerShell -Command 'Set-ExecutionPolicy Unrestricted'
PowerShell $($PWD)\work.ps1"
$BREAK_FOLDER_EXISTS = Test-Path $CHECK_FOLDER_BREAK
$BREAK_FILE_EXISTS = Test-Path $CHECK_FILE_BREAK
If($BREAK_FOLDER_EXISTS -eq $False) {
	New-Item -ItemType directory -Path $CHECK_FOLDER_BREAK
}
If($BREAK_FILE_EXISTS -eq $False) {
	Set-Content $CHECK_FILE_BREAK "$CONTENT_BREAK" -Encoding ASCII	
}
$BREAK_ENV_EXISTS = Test-Path Env:"$CHECK_FILE_BREAK"
If($BREAK_ENV_EXISTS -eq $False) {
	[Environment]::SetEnvironmentVariable("work_break", "C:\Windows\System32\GroupPolicy\Machine\Scripts\Workbreak\work.cmd", "User")
}

$WORKBOOK.Save()
$WORKBOOK.Close()




