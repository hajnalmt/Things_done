## Work registration script
This script was made to make easier the handling of the work registrator excel file on your computer regarding of the BEKO Engineering Ltd. 
Special thanks for the Flextronics Ltd. to provide appropriate environment for the developing.

The script logs the time you start up and shut down your computer into the excel file. 
When you go on a lunch break just run (Windows key and R) the %work_break% command, it runs the script again with the help of a work_break environment variable. (this is the way your actual break-time can be also logged)

#### Usage
  * Firstly place your Munkaido_nyilv_YEAR.xlsx file which you get from the HR assistants in a directory called Work_registration on your Dektop.
  * After that, place the downloaded work.ps1 file next to it (also in this directory).
  * Write into the script your personal data (XXXXXX places)
  * Now you can run the script in Powershell and that's all. (Windows key, type Powershell and then go into the Work_registration directory and you can run it by the .\work.ps1 command)

#### Before running be aware of
  * Your script is runable. (Set-ExecutionPolicy Unrestricted)
  * None of your excel files worksheets are protected. (Under Windows Excel 2013 versions, you can make your sheets unprotected by [this method](https://uknowit.uwgb.edu/page.php?id=28850).)
  * Check that your shutdown and startup scripts are running. (Windows key + R -> gpedit.msc -> Computer Configuration -> Windows Settings -> Scripts -> Startup/Shutdown -> Add -> work.cmd)

#### Future development
  * Automate the e-mail sending to the assistants at the end of the month
