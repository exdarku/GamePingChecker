@echo off
title CSGO Ping Checker ^| perseus
color 0a

:PINGCHECK
cls
echo ========================================================
echo Mindanao Ping Checker
echo =======================================================
echo Only works for MINDANAO area with PLDT connection
echo.
echo Tool created by perseus
echo.
echo 1.) Server 1 check (Most Accurate for CSGO)
echo 2.) Server 2 check (Web Ping)
echo 3.) Server 3 check (Valorant Ping)
choice /c 123
if errorlevel 3 goto ping_server3
if errorlevel 2 goto ping_server2
if errorlevel 1 goto ping_server1

:ping_server1
cls
echo Press any key to start PING test.
pause >nul
@echo on
cls
ping 139.99.124.33
@echo off
echo.
echo Press any key to start again ping test
pause >nul
goto PINGCHECK

:ping_server2
cls
echo Press any key to start PING test.
pause >nul
@echo on
cls
ping 1.1.1.1
@echo off
echo.
echo Press any key to start again ping test
pause >nul
goto PINGCHECK

:ping_server3
cls
echo Press any key to start PING test.
pause >nul
@echo on
cls
ping 104.18.7.209
@echo off
echo.
echo Press any key to start again ping test
pause >nul
goto PINGCHECK
