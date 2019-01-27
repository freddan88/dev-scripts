@echo OFF
setlocal EnableDelayedExpansion
title PHP Server Script v2.1.1 - Windows

REM Author: Fredrik Leemann
REM GitHub: https://github.com/freddan88/dev-scripts

REM Config:
set my_port=8000
set lan_int=Ethernet
set php_exe=C:\MAMP\bin\php\php7.2.10\php
set browser=chrome

REM --------------
echo.
netsh interface ip show addresses "%lan_int%" | find "IP" > ipv4.log

for /f "usebackq tokens=1,2 delims=:" %%a in (ipv4.log) do (
	for /f "usebackq tokens=1,2 delims= " %%c in ('echo %%b') do (
		set soc=%%d
	)
)

echo Server listening on:
echo --------------------
echo.

del ipv4.log
echo %soc%:%my_port%
echo 127.0.0.1:%my_port%
echo localhost:%my_port%

echo.
start %browser% http://%soc%:%my_port%
%php_exe% -S 0.0.0.0:%my_port%