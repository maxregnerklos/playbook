@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

taskkill /f /im explorer.exe
rh.exe -open %SystemDrive%\Windows\SystemResources\imageres.dll.mun -save %SystemDrive%\Windows\SystemResources\imageres_new.dll.mun -action addoverwrite -res imageres.dll.mun.res
rh.exe -open %SystemDrive%\Windows\SystemResources\imagesp1.dll.mun -save %SystemDrive%\Windows\SystemResources\imagesp1_new.dll.mun -action addoverwrite -res imagesp1.dll.mun.res
rh.exe -open %SystemDrive%\Windows\SystemResources\shell32.dll.mun -save %SystemDrive%\Windows\SystemResources\shell32_new.dll.mun -action addoverwrite -res imageres.dll.mun.res
rh.exe -open %SystemDrive%\Windows\SystemResources\zipfldr.dll.mun -save %SystemDrive%\Windows\SystemResources\zipfldr_new.dll.mun -action addoverwrite -res zipfldr.dll.mun.res
rh.exe -open %SystemDrive%\Windows\SystemResources\ole32.dll.mun -save %SystemDrive%\Windows\SystemResources\ole32_new.dll.mun -action addoverwrite -res ole32.dll.mun.res
rh.exe -open %SystemDrive%\Windows\SystemResources\ddraw.dll.mun -save %SystemDrive%\Windows\SystemResources\ddraw_new.dll.mun -action addoverwrite -res ddraw.dll.mun.res
rh.exe -open %SystemDrive%\Windows\SystemResources\acgenral.dll.mun -save %SystemDrive%\Windows\SystemResources\acgenral_new.dll.mun -action addoverwrite -res acgenral.dll.mun.res
rh.exe -open %SystemDrive%\Windows\SystemResources\shellstyle.dll.mun -save %SystemDrive%\Windows\SystemResources\shellstyle_new.dll.mun -action addoverwrite -res shellstyle.dll.mun.res
rh.exe -open %SystemDrive%\Windows\SystemResources\browseui.dll.mun -save %SystemDrive%\Windows\SystemResources\browseui_new.dll.mun -action addoverwrite -res browseui.dll.mun.res
rh.exe -open %SystemDrive%\Windows\SystemResources\mmcndmgr.dll.mun -save %SystemDrive%\Windows\SystemResources\mmcndmgr_new.dll.mun -action addoverwrite -res mmcndmgr.dll.mun.res

del /f /q %SystemDrive%\Windows\SystemResources\zipfldr.dll.mun
del /f /q %SystemDrive%\Windows\SystemResources\shell32.dll.mun
del /f /q %SystemDrive%\Windows\SystemResources\imagesp1.dll.mun
del /f /q %SystemDrive%\Windows\SystemResources\imageres.dll.mun
del /f /q %SystemDrive%\Windows\SystemResources\ole32.dll.mun
del /f /q %SystemDrive%\Windows\SystemResources\ddraw.dll.mun
del /f /q %SystemDrive%\Windows\SystemResources\acgenral.dll.mun
del /f /q %SystemDrive%\Windows\SystemResources\shellstyle.dll.mun
del /f /q %SystemDrive%\Windows\SystemResources\browseui.dll.mun
del /f /q %SystemDrive%\Windows\SystemResources\mmcndmgr.dll.mun

rename %SystemDrive%\Windows\SystemResources\zipfldr_new.dll.mun zipfdlr.dll.mun
rename %SystemDrive%\Windows\SystemResources\shell32_new.dll.mun shell32.dll.mun
rename %SystemDrive%\Windows\SystemResources\imagesp1_new.dll.mun imagesp1.dll.mun
rename %SystemDrive%\Windows\SystemResources\imageres_new.dll.mun imageres.dll.mun
rename %SystemDrive%\Windows\SystemResources\ole32_new.dll.mun ole32.dll.mun
rename %SystemDrive%\Windows\SystemResources\ddraw_new.dll.mun ddraw.dll.mun
rename %SystemDrive%\Windows\SystemResources\acgenral_new.dll.mun acgenral.dll.mun
rename %SystemDrive%\Windows\SystemResources\shellstyle_new.dll.mun shellstyle.dll.mun
rename %SystemDrive%\Windows\SystemResources\browseui_new.dll.mun browseui.dll.mun
rename %SystemDrive%\Windows\SystemResources\mmcndmgr_new.dll.mun mmcndmgr.dll.mun

start explorer.exe
