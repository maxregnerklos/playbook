@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
echo Installing icon theme...
taskkill /f /im explorer.exe
rh.exe -open %SystemDrive%\Windows\SystemResources\imageres.dll.mun -save %SystemDrive%\Windows\SystemResources\imageres_new.dll.mun -action addoverwrite -res imageres.dll.mun.res
rh.exe -open %SystemDrive%\Windows\SystemResources\imagesp1.dll.mun -save %SystemDrive%\Windows\SystemResources\imagesp1_new.dll.mun -action addoverwrite -res imagesp1.dll.mun.res
rh.exe -open %SystemDrive%\Windows\SystemResources\shell32.dll.mun -save %SystemDrive%\Windows\SystemResources\shell32_new.dll.mun -action addoverwrite -res imageres.dll.mun.res
rh.exe -open %SystemDrive%\Windows\SystemResources\zipfldr.dll.mun -save %SystemDrive%\Windows\SystemResources\zipfldr_new.dll.mun -action addoverwrite -res zipfldr.dll.mun.res
del /f /q %SystemDrive%\Windows\SystemResources\zipfldr.dll.mun
del /f /q %SystemDrive%\Windows\SystemResources\shell32.dll.mun
del /f /q %SystemDrive%\Windows\SystemResources\imagesp1.dll.mun
del /f /q %SystemDrive%\Windows\SystemResources\imageres.dll.mun
rename %SystemDrive%\Windows\SystemResources\zipfldr_new.dll.mun zipfldr.dll.mun
rename %SystemDrive%\Windows\SystemResources\shell32_new.dll.mun shell32.dll.mun
rename %SystemDrive%\Windows\SystemResources\imagesp1_new.dll.mun imagesp1.dll.mun
rename %SystemDrive%\Windows\SystemResources\imageres_new.dll.mun imageres.dll.mun
start "Explorer" "%WinDir%\explorer.exe"
echo Installing StartIsBack for Start Menu theme...
powershell Invoke-WebRequest "https://github.com/redress-server/playbook-stuffs/raw/main/StartIsBackPlusPlus_setup.exe" -OutFile \"$env:TEMP\StartIsBack.exe\"
call "%temp%\StartIsBack.exe" /elevated /silent
del /f /q "%temp%\StartIsBack.exe"
