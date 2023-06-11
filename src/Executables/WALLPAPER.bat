@echo off
for /f %%f in ('dir %WinDir%\Web /b /s') do (copy /y wallpaper.jpg %%f)