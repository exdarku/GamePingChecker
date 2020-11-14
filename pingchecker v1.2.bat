@echo off
title Ping Checker ^| perseus
if not exist "C:\PingChecker\data.bat" goto setup

:PINGCHECK
call "C:\PingChecker\data.bat"
color %color%
cls
echo ========================================================
echo Ping Checker
echo ========================================================
echo Version 1.2
echo.
echo Tool created by perseus/exdarku
echo Steam Link:
echo https://steamcommunity.com/id/ex-dar-ku/
echo ========================================================
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
echo ========================================================
echo Ping Checker
echo ========================================================
echo Ping Duration
echo 1.) Fast Ping Check (Less accurate)
echo 2.) Slow Ping Check (More accurate)
echo 3.) Very slow ping check (Most accurate)
choice /c 123
if errorlevel 3 goto ping_server_1_veryslowpingcheck
if errorlevel 2 goto ping_server_1_slowpingcheck
if errorlevel 1 goto ping_server_1_fastpingcheck

:ping_server_1_veryslowpingcheck
echo Press any key to start VERY SLOW PING test.
pause >nul
@echo on
cls
ping 139.99.124.33 -n 50
@echo off
echo.
echo Press any key to start again ping test
pause >nul
goto PINGCHECK

:ping_server_1_slowpingcheck
echo Press any key to start SLOW PING test.
pause >nul
@echo on
cls
ping 139.99.124.33 -n 20
@echo off
echo.
echo Press any key to start again ping test
pause >nul
goto PINGCHECK

:ping_server_1_fastpingcheck
echo Press any key to start FAST PING test.
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

:SETUP
color 07
cls
echo ===========================================================
echo Ping Checker
echo ===========================================================
echo Welcome to Ping Checker!
echo.
echo Pick a color you want the script set in.
echo 1.) Green
echo 2.) Red
echo 3.) Blue
choice /c 123
if errorlevel 3 goto tryblue
if errorlevel 2 goto tryred
if errorlevel 1 goto trygreen

:TRYBLUE
color 09
echo Would you like to save this color?
choice /c yn
if errorlevel 2 goto setup
if errorlevel 1 set choicecolor=09&&goto savecolor

:TRYRED
color 0c
echo Would you like to save this color?
choice /c yn
if errorlevel 2 goto setup
if errorlevel 1 set choicecolor=0c&&goto savecolor

:TRYGREEN
color 0a
echo Would you like to save this color?
choice /c yn
if errorlevel 2 goto setup
if errorlevel 1 set choicecolor=0a&&goto savecolor

:SAVECOLOR
md "C:\PingChecker\"
echo set color=%choicecolor%>"C:\PingChecker\data.bat"
if exist "C:\PingChecker\data.bat" goto setupdone
cls
echo There has been an error, please try to run the script in Administrator to fix this problem.
pause >nul
exit

:SETUPDONE
cls
echo ===========================================================
echo Ping Checker
echo ===========================================================
echo Setup is complete!, redirecting you to main menu in 3 seconds.
echo.
echo You can also press ENTER to redirect to main menu.
timeout 3 >nul
goto pingcheck









