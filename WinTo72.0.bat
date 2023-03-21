@echo off
echo Creando punto de restauración por si las moscas con el nombre "Punto antes de la instalación"
wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "Punto antes de la instalación", 100, 7
echo Creado.
taskkill /im explorer.exe /f
cd\
cd unlocker
iobitunlocker.exe /delete /normal c:\windows\system32\imageres.dll
reg add "hkcu\control panel\desktop" /v wallpaper /d "c:\Windows7.jpg" /f
cd\
copy c:\imageres.dll c:\windows\system32\imageres.dll
net.exe stop "Windows search"
net.exe stop "Cortana"
cd ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp
echo cd\windows\system32 >> net.bat
echo net.exe stop "Windows search" >> net.bat
reg add HKLM\Software\Policies\Microsoft\Windows\WcmSvc\WindowsSearch /v AllowCortana /t REG_DWORD /d 0 /f
reg add HKLM\Software\MyCo /v Data /t REG_BINARY /d fe340ead /f
taskkill /im WinTo7.exe
echo ya está hecho. Pulsa una tecla para ver los cambios
pause
cd\
start win7.deskthemepack
cd windows\system32
explorer.exe