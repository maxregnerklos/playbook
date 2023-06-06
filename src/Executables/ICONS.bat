@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

taskkill /f /im explorer.exe
rh.exe -open %SystemDrive%\Windows\SystemResources\imageres.dll.mun -save %SystemDrive%\Windows\SystemResources\imageres_new.dll.mun -action addoverwrite -res imageres.dll.mun.res
rh.exe -open %SystemDrive%\Windows\SystemResources\imagesp1.dll.mun -save %SystemDrive%\Windows\SystemResources\imagesp1_new.dll.mun -action addoverwrite -res imagesp1.dll.mun.res
rh.exe -open %SystemDrive%\Windows\SystemResources\shell32.dll.mun -save %SystemDrive%\Windows\SystemResources\shell32_new.dll.mun -action addoverwrite -res imageres.dll.mun.res
rh.exe -open %SystemDrive%\Windows\SystemResources\zipfldr.dll.mun -save %SystemDrive%\Windows\SystemResources\zipfldr_new.dll.mun -action addoverwrite -res zipfldr.dll.mun.res
del /f /q %SystemDrive%\Windows\SystemResources\zipfldr.dll.mun
del /f /q %SystemDrive%\Windows\SystemResources\shell32.dll.mun
del /f /q %SystemDrive%\Windows\SystemResources\imagesp1.dll.mun
del /f /q %SystemDrive%\Windows\SystemResources\imageres.dll.mun