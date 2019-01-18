@echo OFF
setlocal EnableDelayedExpansion
title PHP Server Script v2.1.0
#
# Author: Fredrik Leemann
# GitHub: https://github.com/freddan88/dev-scripts
#
# Config:
set my_port=8000
set lan_int=LAN1
set php_exe=C:\xampp\php\php
set browser=chrome

REM --------------------
echo.
netsh interface ip show addresses "%lan_int%" | find "IP" > ipv4.log

for /f "usebackq tokens=1,2 delims= " %%a in (ipv4.log) do (
	set soc=%%b
)

echo Server listening on:
echo --------------------
del ipv4.log
echo.

echo %soc%:%my_port%
echo 127.0.0.1:%my_port%
echo localhost:%my_port%

start %browser% http://%soc%:%my_port%
%php_exe% -S 0.0.0.0:%my_port%