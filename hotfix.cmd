CLS
@ECHO OFF
COLOR 70
MODE CON COLS=65 LINES=20
IF "%1" == "/n" Goto NoBackup
IF "%1" == "/N" Goto NoBackup

ECHO.
ECHO ----------------------------------------------------------------
ECHO   �H�U�N�۰ʦw�˪��n��
ECHO   1. Windows XP SP3 ���᪺�Ҧ��ץ���(�]�t�ƥ��t����)
ECHO   2. Windows Media Player 11 ���᪺�Ҧ��ץ���(�]�t�ƥ��t����)
ECHO.   
ECHO                                           ��s����G2009/01/26
ECHO ----------------------------------------------------------------
ECHO.
ECHO   1. ���b�w�� Windows XP SP3 ���᪺�Ҧ��ץ��ɡA�еy��...
ECHO      �u���b�w�� HotFix Type 1�A�еy��...
for %%i in (wxpsp3\hotfix1\WindowsXP*.exe) do start /wait %%i /passive /norestart
ECHO      �u���b�w�� HotFix Type 2�A�еy��...
for %%i in (wxpsp3\hotfix2\*.exe) do start /wait %%i /Q:U /R:N
ECHO      �u���b�w�� HotFix Type 3�A�еy��...
for %%i in (wxpsp3\hotfix3\*.exe) do start /wait %%i /passive /norestart
ECHO      �u���b�w�� HotFix Type 4�A�еy��...
for %%i in (wxpsp3\hotfix4\*.exe) do start /wait %%i /Q
ECHO      �u���b�w�� Microsoft Update ����A�еy��...
xcopy wxpsp3\hotfix5\muweb.dll %SystemRoot%\System32\ /y > nul
start /wait regsvr32 /s muweb.dll
start /wait wxpsp3\hotfix5\wusetup.exe /quiet /norestart
ECHO      �w�˧����C
ECHO.
ECHO   2. ���b�w�� Windows Media Player 11 ���᪺�Ҧ��ץ��ɡA�еy��..
ECHO      �u���b�w�� HotFix Type 1�A�еy��...
for %%i in (wmp11\hotfix1\*.exe) do start /wait %%i /passive /norestart
ECHO      �u���b�w�� HotFix Type 2�A�еy��...
for %%i in (wmp11\hotfix2\*.exe) do start /wait %%i /passive /norestart
ECHO      �w�˧����C
ECHO.
Goto End

:NoBackup
ECHO.
ECHO ----------------------------------------------------------------
ECHO   �H�U�N�۰ʦw�˪��n��
ECHO   1. Windows XP SP3 ���᪺�Ҧ��ץ���(�N���ƥ��t����)
ECHO   2. Windows Media Player 11 ���᪺�Ҧ��ץ���(�N���ƥ��t����)
ECHO.   
ECHO                                           ��s����G2009/01/26
ECHO ----------------------------------------------------------------
ECHO.
ECHO   1. ���b�w�� Windows XP SP3 ���᪺�Ҧ��ץ��ɡA�еy��...
ECHO      �u���b�w�� HotFix Type 1�A�еy��...
for %%i in (wxpsp3\hotfix1\WindowsXP*.exe) do start /wait %%i /passive /norestart /nobackup
ECHO      �u���b�w�� HotFix Type 2�A�еy��...
for %%i in (wxpsp3\hotfix2\*.exe) do start /wait %%i /Q:U /R:N
ECHO      �u���b�w�� HotFix Type 3�A�еy��...
for %%i in (wxpsp3\hotfix3\*.exe) do start /wait %%i /passive /norestart /nobackup
ECHO      �u���b�w�� HotFix Type 4�A�еy��...
for %%i in (wxpsp3\hotfix4\*.exe) do start /wait %%i /Q
ECHO      �u���b�w�� Microsoft Update ����A�еy��...
xcopy wxpsp3\hotfix5\muweb.dll %SystemRoot%\System32\ /y > nul
start /wait regsvr32 /s muweb.dll
start /wait wxpsp3\hotfix5\wusetup.exe /quiet /norestart
ECHO      �w�˧����C
ECHO.
ECHO   2. ���b�w�� Windows Media Player 11 ���᪺�Ҧ��ץ��ɡA�еy��..
ECHO      �u���b�w�� HotFix Type 1�A�еy��...
for %%i in (wmp11\hotfix1\*.exe) do start /wait %%i /passive /norestart /nobackup
ECHO      �u���b�w�� HotFix Type 2�A�еy��...
for %%i in (wmp11\hotfix2\*.exe) do start /wait %%i /passive /norestart /nobackup
ECHO      �w�˧����C
ECHO.
Goto End

:End
EXIT

