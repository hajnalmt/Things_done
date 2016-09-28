## Work registration script
This script was made to make easier the handling of the work registrator excel file on your computer regarding of the BEKO Engineering Ltd. 
Special thanks for the Flextronics Ltd. to provide appropriate environment for the developing.

The script logs the time you start up and shut down your computer into the excel file. 
When you go on a lunch break just run (Windows key and R) the %work_break% command, it runs the script again with the help of a work_break environment variable. (this is the way your actual break-time can be also logged)

#### Usage
  * Firstly place your Munkaido_nyilv_YEAR.xlsx file which you get from the HR assistants in a directory called Work_registration on your Dektop.
  * After that, place the downloaded work.ps1 file next to it (also in this directory).
  * Write into the script your personal data (XXXXXX places)
  * Now you can run the script in Powershell and that's all. (Windows key, type Powershell+Enter and then go into the Work_registration directory, run by the .\work.ps1 command)

#### When running be aware of
  * Your script is runable. (Set-ExecutionPolicy Unrestricted)
  * None of your excel file's worksheets are protected. (Under Windows Excel 2013 versions, you can make your sheets unprotected by [this method](https://uknowit.uwgb.edu/page.php?id=28850).)
  * Check that your shutdown and startup scripts are running. (Windows key + R -> gpedit.msc -> Computer Configuration -> Windows Settings -> Scripts -> Startup/Shutdown -> Add -> work.cmd)

#### Future development
  * Automate the e-mail sending to the assistants at the end of the month 

#### Bug report
  * There can be a chance that your startup and shutdown scripts can't open Excel files. It's a known Excel bug and for scheduled tasks it occurs also. The solution is to create a folder (or two on a 64bit-windows). For more info visit: [page1](https://social.technet.microsoft.com/Forums/windowsserver/en-US/aede572b-4c1f-4729-bc9d-899fed5fad02/run-powershell-script-as-scheduled-task-that-uses-excel-com-object?forum=winserverpowershell) [page2](http://stackoverflow.com/questions/22670344/powershell-script-cannot-access-a-file-when-run-as-a-scheduled-task)
    * (32Bit, always) C:\Windows\System32\config\systemprofile\Dektop
    * (64Bit) C:\Windows\SysWOW64\config\systemprofile\Desktop
  * On Windows 7 you can't use Set-Culture for Culture setting and also the [threading.thread]::CurrentThread.CurrentCulture either is not working ([more info](http://www.vistax64.com/powershell/16358-how-do-i-explicitly-set-currentculture.html)). The solution can be the change of every language setting on your computer to "en-US". (Control Panel->Clock, Language, and Region->Region and language settings)
  

Have a good coding time, enjoy! :punch:
