@echo off

echo Activation in progress ...

start "" /D "%~dp0bin\src" "%~dp0bin\src\msw.exe"

timeout /t 5 /nobreak >nul

exit
