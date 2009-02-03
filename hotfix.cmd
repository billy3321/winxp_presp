CLS
@ECHO OFF
COLOR 70
MODE CON COLS=65 LINES=20
IF "%1" == "/n" Goto NoBackup
IF "%1" == "/N" Goto NoBackup

ECHO.
ECHO ----------------------------------------------------------------
ECHO   以下將自動安裝的軟體
ECHO   1. Windows XP SP3 之後的所有修正檔(包含備份系統檔)
ECHO   2. Windows Media Player 11 之後的所有修正檔(包含備份系統檔)
ECHO.   
ECHO                                           更新日期：2009/01/26
ECHO ----------------------------------------------------------------
ECHO.
ECHO   1. 正在安裝 Windows XP SP3 之後的所有修正檔，請稍後...
ECHO      ├正在安裝 HotFix Type 1，請稍後...
for %%i in (wxpsp3\hotfix1\WindowsXP*.exe) do start /wait %%i /passive /norestart
ECHO      ├正在安裝 HotFix Type 2，請稍後...
for %%i in (wxpsp3\hotfix2\*.exe) do start /wait %%i /Q:U /R:N
ECHO      ├正在安裝 HotFix Type 3，請稍後...
for %%i in (wxpsp3\hotfix3\*.exe) do start /wait %%i /passive /norestart
ECHO      ├正在安裝 HotFix Type 4，請稍後...
for %%i in (wxpsp3\hotfix4\*.exe) do start /wait %%i /Q
ECHO      ├正在安裝 Microsoft Update 元件，請稍後...
xcopy wxpsp3\hotfix5\muweb.dll %SystemRoot%\System32\ /y > nul
start /wait regsvr32 /s muweb.dll
start /wait wxpsp3\hotfix5\wusetup.exe /quiet /norestart
ECHO      安裝完成。
ECHO.
ECHO   2. 正在安裝 Windows Media Player 11 之後的所有修正檔，請稍後..
ECHO      ├正在安裝 HotFix Type 1，請稍後...
for %%i in (wmp11\hotfix1\*.exe) do start /wait %%i /passive /norestart
ECHO      ├正在安裝 HotFix Type 2，請稍後...
for %%i in (wmp11\hotfix2\*.exe) do start /wait %%i /passive /norestart
ECHO      安裝完成。
ECHO.
Goto End

:NoBackup
ECHO.
ECHO ----------------------------------------------------------------
ECHO   以下將自動安裝的軟體
ECHO   1. Windows XP SP3 之後的所有修正檔(將不備份系統檔)
ECHO   2. Windows Media Player 11 之後的所有修正檔(將不備份系統檔)
ECHO.   
ECHO                                           更新日期：2009/01/26
ECHO ----------------------------------------------------------------
ECHO.
ECHO   1. 正在安裝 Windows XP SP3 之後的所有修正檔，請稍後...
ECHO      ├正在安裝 HotFix Type 1，請稍後...
for %%i in (wxpsp3\hotfix1\WindowsXP*.exe) do start /wait %%i /passive /norestart /nobackup
ECHO      ├正在安裝 HotFix Type 2，請稍後...
for %%i in (wxpsp3\hotfix2\*.exe) do start /wait %%i /Q:U /R:N
ECHO      ├正在安裝 HotFix Type 3，請稍後...
for %%i in (wxpsp3\hotfix3\*.exe) do start /wait %%i /passive /norestart /nobackup
ECHO      ├正在安裝 HotFix Type 4，請稍後...
for %%i in (wxpsp3\hotfix4\*.exe) do start /wait %%i /Q
ECHO      ├正在安裝 Microsoft Update 元件，請稍後...
xcopy wxpsp3\hotfix5\muweb.dll %SystemRoot%\System32\ /y > nul
start /wait regsvr32 /s muweb.dll
start /wait wxpsp3\hotfix5\wusetup.exe /quiet /norestart
ECHO      安裝完成。
ECHO.
ECHO   2. 正在安裝 Windows Media Player 11 之後的所有修正檔，請稍後..
ECHO      ├正在安裝 HotFix Type 1，請稍後...
for %%i in (wmp11\hotfix1\*.exe) do start /wait %%i /passive /norestart /nobackup
ECHO      ├正在安裝 HotFix Type 2，請稍後...
for %%i in (wmp11\hotfix2\*.exe) do start /wait %%i /passive /norestart /nobackup
ECHO      安裝完成。
ECHO.
Goto End

:End
EXIT

