CLS
@ECHO OFF
COLOR 70
MODE CON COLS=80 LINES=25
if not exist wget.exe goto error
if not exist hotfix.cmd goto error
ECHO -------------------------------------------------------------------------------
ECHO     (偽) Windows XP Pre-SP4 自動建立程式
ECHO -------------------------------------------------------------------------------
ECHO.
ECHO     說明：這是用來自動產生 (偽) Windows XP Pre-SP4 的批次檔。
ECHO           執行這個批次檔就會自動從微軟網站下載更新檔，
ECHO           並按照 (偽) Windows XP Pre-SP4 的格式自動產生安裝檔。
ECHO           請確定您已經連接 1Mb 以上的寬頻網路，下載時間大約為
ECHO           10~30 分鐘不等，請耐心等候。
ECHO.
ECHO     系統需求：                          
ECHO           1. Windows XP SP3    
ECHO           2. Windows Media Player 11  
ECHO.
ECHO.
ECHO.     
ECHO     ┌──────────────────────────────────┐
ECHO     │                       請按任意鍵開始下載！                         │
ECHO.    └──────────────────────────────────┘ 
ECHO.
ECHO.
ECHO.
ECHO     其他更詳細的說明請見 http://www.threesecond.info/    更新日期：2009/01/26
ECHO -------------------------------------------------------------------------------
pause
CLS
ECHO -------------------------------------------------------------------------------
ECHO   開始下載檔案.....
ECHO -------------------------------------------------------------------------------
ECHO.
ECHO   0. 正在建立安裝目錄，請稍後...
if exist build.log del /Q build.log
if exist wxp_sp4\ rmdir /S /Q wxp_sp4\
md wxp_sp4\wxpsp3\hotfix1\
md wxp_sp4\wxpsp3\hotfix2\
md wxp_sp4\wxpsp3\hotfix3\
md wxp_sp4\wxpsp3\hotfix4\
md wxp_sp4\wxpsp3\hotfix5\
md wxp_sp4\wmp11\hotfix1\
md wxp_sp4\wmp11\hotfix2\
move /y wget.exe %WINDIR%\System32\ > nul
move /y hotfix.cmd wxp_sp4\ > nul
ECHO.
ECHO   1. 正在下載 Windows XP SP3 之後的所有修正檔，請稍後...
ECHO      ├正在下載 HotFix Type 1，請稍後...
wget -abuild.log http://download.microsoft.com/download/f/0/c/f0cdf8f7-5952-42f9-8064-daa2087022c3/WindowsXP-KB952287-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/d/5/c/d5ce8230-4e5c-46e9-9966-4e0ec996de3d/WindowsXP-KB950760-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/1/9/d/19ddb765-9e1c-41ca-bc7e-948dc7ab2ed5/WindowsXP-KB951698-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/f/5/d/f5df22ac-ba6f-4975-815a-c5c12becec69/WindowsXP-KB950762-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/e/e/e/eee2d6e2-e464-4349-b521-a5c6386b948e/WindowsXP-KB951830-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/5/a/2/5a2f25f4-0153-4b1b-8d9a-a7f5b4cf8e63/WindowsXP-KB944043-v3-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/2/6/1/261fca42-22c0-4f91-9451-0e0f2e08356d/WindowsXP-KB942288-v3-x86.exe    
wget -abuild.log http://download.microsoft.com/download/5/f/5/5f5a1082-98b4-4560-908d-e8f495708419/WindowsXP-KB898461-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/f/2/9/f2964a3e-ae50-484a-80fe-e55c37963d6c/WindowsXP-KB951748-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/f/c/c/fcccda5a-bd48-4f0f-9ef5-2f6878a0250c/WindowsXP-KB951978-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/2/1/2/2129ad43-1192-4d16-b1ed-720098627519/WindowsXP-KB951376-v2-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/c/4/8/c486343a-7b01-4316-85cd-f82df5147e18/WindowsXP-KB952954-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/1/2/b/12b36d6a-8065-4f5b-a759-e58ef1e0a407/WindowsXP-KB951066-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/4/2/d/42db9e7e-b161-48fd-a960-864a1ae7797e/WindowsXP-KB950974-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/0/4/f/04f33726-926a-4f64-b957-8443c39c26f6/WindowsXP-KB953839-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/d/3/2/d32b42d1-4aab-4ae8-b079-b796095a5d09/WindowsXP-KB955417-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/d/5/d/d5df3f09-7885-4ce9-bb14-f5d21ed1c146/WindowsXP-KB932716-v2-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/3/f/0/3f0b36f6-926c-482d-ae4f-57be22cd7d2e/WindowsXP-KB938464-x86-CHT.exe      
wget -abuild.log http://download.microsoft.com/download/1/6/7/1679b6dc-a918-4fa6-ac34-50180163fcdb/WindowsXP-KB954708-x86-CHT.exe      
wget -abuild.log http://download.microsoft.com/download/4/b/7/4b7a2ff8-f45a-4511-87d2-e64655733766/WindowsXP-KB951618-v2-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/d/0/4/d04ac3ee-e381-4f1c-b8a6-022644346813/WindowsXP-KB958644-x86-CHT.exe                   
wget -abuild.log http://download.microsoft.com/download/7/3/3/73399e0c-9ef1-4ad8-a49e-bfffa78d955f/WindowsXP-KB956803-x86-CHT.exe                   
wget -abuild.log http://download.microsoft.com/download/3/a/9/3a954a64-bb3d-480c-b75c-b648bcb14880/WindowsXP-KB954211-x86-CHT.exe                   
wget -abuild.log http://download.microsoft.com/download/e/d/3/ed33e9bd-47f1-42db-843b-73071912bc0c/WindowsXP-KB953155-x86-CHT.exe                   
wget -abuild.log http://download.microsoft.com/download/0/f/8/0f862a24-49ee-4409-bf3f-71985999f769/WindowsXP-KB956841-x86-CHT.exe                   
wget -abuild.log http://download.microsoft.com/download/5/d/4/5d428d99-ff56-4dc7-a049-d3623f0d1426/WindowsXP-KB954920-v2-x86-CHT.exe                
wget -abuild.log http://download.microsoft.com/download/e/c/3/ec308422-8bd1-479c-bcb3-7788b8d3e782/WindowsXP-KB956391-x86-CHT.exe                   
wget -abuild.log http://download.microsoft.com/download/8/7/f/87fa6544-3020-44a6-a086-a698d19d94e6/WindowsXP-KB957097-x86-CHT.exe                
wget -abuild.log http://download.microsoft.com/download/7/0/8/7087bb64-ac14-4656-9666-8e86f988d844/WindowsXP-KB955069-x86-CHT.exe  
wget -abuild.log http://download.microsoft.com/download/5/B/E/5BE2AF43-5622-4C84-938A-7873D138CE41/WindowsXP-KB956802-x86-CHT.exe             
wget -abuild.log http://download.microsoft.com/download/A/1/9/A19A77AB-AC52-4C39-A788-09003D29C395/WindowsXP-KB958215-x86-CHT.exe             
wget -abuild.log http://download.microsoft.com/download/D/1/D/D1D1C3CD-1319-48A1-B2B0-46AD5BA0066B/WindowsXP-KB960714-x86-CHT.exe             
wget -abuild.log http://download.microsoft.com/download/0/E/1/0E1AB1B0-CDBA-4F33-AB20-E22EF45FD1F4/WindowsXP-KB954600-x86-CHT.exe             
wget -abuild.log http://download.microsoft.com/download/C/8/F/C8F4CB19-0BA1-49C2-97D6-E42A8D212EEB/WindowsXP-KB955839-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/3/9/3/3935F90A-A681-4DF0-A41E-420D9726E947/WindowsXP-KB958687-x86-CHT.exe
move /y *.exe wxp_sp4\wxpsp3\hotfix1\ > nul
ECHO      ├正在下載 HotFix Type 2，請稍後...
wget -abuild.log http://download.microsoft.com/download/1/7/1/17115a2c-8493-4947-bb7d-d7b58457acf7/CAPICOM-KB931906-v2102.exe
wget -abuild.log http://download.microsoft.com/download/c/c/3/cc3460fc-91e3-4c9f-8ceb-d576a0662aa9/WindowsXP-KB923789-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/2/0/6/2064287C-65A7-4AA9-9A38-E0FBB67FFAE1/rootsupd.exe
move /y *.exe wxp_sp4\wxpsp3\hotfix2\ > nul
ECHO      ├正在下載 HotFix Type 3，請稍後...
wget -abuild.log http://download.microsoft.com/download/3/2/9/329c83c3-c092-48d8-b1eb-709319e8cffa/Windows-zh-TW-KB943729.exe
wget -abuild.log http://download.microsoft.com/download/3/a/f/3af35e11-69fd-40bf-ab16-fea6a240a5e4/WindowsXP-KB959252-x86-CHT.exe 
wget -abuild.log http://download.microsoft.com/download/5/0/c/50c264da-fbfe-4d09-967a-740bc2614616/msxml4-KB954430-cht.exe        
wget -abuild.log http://download.microsoft.com/download/f/c/d/fcd66977-535c-4f8f-94cc-dace02b417f5/WindowsXP-KB954459-x86-CHT.exe 
move /y *.exe wxp_sp4\wxpsp3\hotfix3\ > nul
ECHO      ├正在下載 HotFix Type 4，請稍後...
wget -abuild.log http://download.microsoft.com/download/4/a/a/4aa524c6-239d-47ff-860b-5b397199cbf8/windows-kb890830-v2.6.exe
move /y *.exe wxp_sp4\wxpsp3\hotfix4\ > nul
ECHO      ├正在下載 Windows Update Agent，請稍後...
wget -abuild.log http://download.windowsupdate.com/windowsupdate/redist/standalone/7.2.6001.788/windowsupdateagent30-x86.exe
windowsupdateagent30-x86.exe /Q /X:wxp_sp4\wxpsp3\hotfix5
wget -abuild.log http://update.microsoft.com/microsoftupdate/v6/V5Controls/en/x86/client/muweb_site.cab
extrac32 /y muweb_site.cab muweb.dll
del /q /f *.cab > nul
del /q /f *.exe > nul
move /y *.dll wxp_sp4\wxpsp3\hotfix5\ > nul
for %%i in (ar cs da de el es fi fr he hu it ja ko nl no pl pt ptbr ru sv tr zhcn) do (
rd /q /s wxp_sp4\wxpsp3\hotfix5\%%i > nul
del /q /f wxp_sp4\wxpsp3\hotfix5\*.mui_%%i > nul
del /q /f wxp_sp4\wxpsp3\hotfix5\wuauhelp.chm_%%i > nul  
)
ECHO      下載完成。
ECHO.
ECHO   2. 正在下載 Windows Media Player 11 之後的所有修正檔，請稍後...
ECHO      ├正在下載 HotFix Type 1，請稍後...
wget -abuild.log http://download.microsoft.com/download/a/a/8/aa895b99-3678-4e8a-8dfd-401fc2e7622a/WindowsMedia11-KB954154-x86-CHT.exe    
wget -abuild.log http://download.microsoft.com/download/d/5/e/d5ed5948-a89a-4cab-99e0-86e381e031c0/WindowsMedia11-KB929399-v2-x86-INTL.exe
wget -abuild.log http://download.microsoft.com/download/8/6/2/8621cdcf-9977-4f37-97ae-b336892a6be1/WindowsMedia11-KB939683-x86-CHT.exe    
wget -abuild.log http://download.microsoft.com/download/a/f/e/afe66ec0-1145-4cd7-923f-3e3644de4784/WindowsMedia11-KB936782-x86-CHT.exe    
wget -abuild.log http://download.microsoft.com/download/9/3/c/93c2de53-05f5-4497-ba41-257de0ec4015/WindowsXP-KB941569-x86-CHT.exe         
wget -abuild.log http://download.microsoft.com/download/8/C/3/8C36B44D-A510-467B-80E9-49412E376554/WindowsXP-WindowsMedia-KB952069-v2-x86-CHT.exe
move /y *.exe wxp_sp4\wmp11\hotfix1\ > nul
ECHO      ├正在下載 HotFix Type 2，請稍後...
move /y *.exe wxp_sp4\wmp11\hotfix2\ > nul
ECHO      下載完成。
ECHO.
ECHO.
CLS
ECHO -------------------------------------------------------------------------------
ECHO     檔案下載完成！
ECHO -------------------------------------------------------------------------------
ECHO.
ECHO     說明：(偽) Windows XP Pre-SP4 所有檔案已下載完成。
ECHO           您可在這個目錄下找到 wxp_sp3，您只要將此目錄複製到您所要更新的電腦，
ECHO           並執行 hotfix.cmd 即可開始安裝 (偽) Windows XP Pre-SP4。
ECHO.
ECHO           原始的 build.cmd 和 wget.exe，您可自行刪除。
ECHO.           
ECHO           另外，這個目錄下會產生記錄檔 build.log，這是下載檔案的完整記錄，
ECHO           您可以開啟這個檔案檢查下載記錄，按下任意鍵後可關閉本程式。
ECHO.
ECHO.
ECHO.
ECHO     ┌──────────────────────────────────┐
ECHO     │                       請按任意鍵關閉程式！                         │
ECHO.    └──────────────────────────────────┘ 
ECHO.     
ECHO.
ECHO.
ECHO     其他更詳細的說明請見 http://www.threesecond.info/
ECHO -------------------------------------------------------------------------------
pause
move /y %WINDIR%\System32\wget.exe > nul
explorer "http://www.threesecond.info/v2/modules/xhnewbb/viewtopic.php?topic_id=1416"
goto end

:error
CLS
ECHO -------------------------------------------------------------------------------
ECHO     找不到必要的檔案！
ECHO -------------------------------------------------------------------------------
ECHO.
ECHO     說明：您正在執行的 (偽) Windows XP Pre-SP4 自動建立程式
ECHO           缺少必要的執行檔，請確認您是否有完整的檔案，
ECHO           或是重新下載 (偽) Windows XP Pre-SP4 自動建立程式。
ECHO.
ECHO           本程式即將關閉。
ECHO.         
ECHO.         
ECHO.         
ECHO.         
ECHO.
ECHO.
ECHO     ┌──────────────────────────────────┐
ECHO     │                       請按任意鍵關閉程式！                         │
ECHO.    └──────────────────────────────────┘ 
ECHO.     
ECHO.
ECHO.
ECHO     其他更詳細的說明請見 http://www.threesecond.info/
ECHO -------------------------------------------------------------------------------
pause
goto end

:end
exit