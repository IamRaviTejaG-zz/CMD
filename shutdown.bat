@echo off
TITLE Shutdown Control Batch 1.00

CALL :GETINPUT

:GETINPUT
cls
echo ==============================================================
echo Enter 1 to shutdown your computer immediately.
echo Enter 2 to restart your computer immediately.
echo Enter 3 to shutdown your computer after a entered time (in seconds).
echo Enter 4 to restart your computer after a entered time (in seconds).
echo ==============================================================
echo.
set /p Entry=Enter your choice : 
if "%Entry%"=="1" (GOTO SHUT)
if "%Entry%"=="2" (GOTO RES)
if "%Entry%"=="3" (GOTO TSHUT)
if "%Entry%"=="4" (GOTO TRES)
if "%Entry%"=="" (GOTO GETINPUT)

:SHUT
echo Shutting down immediately.
shutdown.exe -s -t

:TSHUT
set /p Tim=Enter time in seconds: 
echo Shutting down in %Tim% seconds.
shutdown.exe -s -t %Tim%

:RES
echo Restarting immediately.
shutdown.exe -r -t

:TRES
set /p Tim=Enter time in seconds: 
echo Restarting in %Tim% seconds.
shutdown.exe -r -t %Tim%

echo Shutdown Control v1.00.
echo © 2016, Ravi Teja Gannavarapu.
