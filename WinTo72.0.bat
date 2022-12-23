@echo off
echo esto desinstalará cortana y otras cosas para que tu sistema se parezca a Windows 7. Se borrará permanentemente de su sistema. Si quieres volver a instalar cortana vete a la microsoft store. cierra esto o
pause
echo Creando punto de restauración por si las moscas con el nombre "Punto antes de la instalación"
wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "Punto antes de la instalación", 100, 7
echo Creado.
taskkill /im explorer.exe /f
start imageres.exe
Windows7.exe
cd\
cd unlocker
iobitunlocker.exe /delete /normal c:\windows\system32\imageres.dll
cd\windows\system32
takeown /f c:\windows\system32\imageres.dll
icacls "c:\windows\system32\imageres.dll" /grant user1:f
regsvr32 /u C:\Windows\System32\imageres.dll
copy imageres.dll imagerescopy.dll
takeown /f c:\windows\system32\file.dll
icacls "c:\windows\system32\file.dll" /grant user1:f
cd windows\system32
rename c:\windows\system32\imageres.dll imaolder.dll
rename imageres.dll imaold.dll
del imageres.dll /q
start imageres.exe
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
echo ya está hecho. Pulsa una tecla para cerrar sesión
pause
shutdown /r