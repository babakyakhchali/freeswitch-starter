@echo off
title This is your first batch script!
echo Welcome to batch scripting!
set filepath=%~dp0
echo %filepath:~0,-1%
set wd=%filepath:~0,-1%
set fsdir="C:\Program Files\FreeSWITCH"
set rc=%fsdir%\FreeSwitchConsole.exe -base %wd% -mod %fsdir%\mod -nonat -nonatmap -log %wd%/log
start "Minimal Freeswitch" %rc%
pause