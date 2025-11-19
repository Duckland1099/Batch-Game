@echo off 
if %fight2%==2 goto ZK
if %fight2%==0 goto start
:start
type portal.txt
echo.
echo you went deeper inside the hideout, and from a window you see the portal...
echo.
echo and it's active... this isnt good
echo.
echo you will need to shutdown the portal, quickly but... it could be alreadty too late...
pause
echo.
echo  you try to get to the portal room
echo.
echo you see two ALI cultists...
timeout /t 2 > nul 
call battle3b.bat
:ZK
echo.
echo the ALI cultists got killed by someone else...
echo.
echo base tells you something really bad happened... you'll need go to the portal room now
echo.
echo you see a dropped weapon, better amour and extra medkits, you pick them up
set /a att = 30
set /a def = 25
set /a hp = 100
echo.
timeout /t 2 > nul 
echo you go to the portal room the door
type portal.txt
echo.
echo but you see something noone would want to see...
echo.
timeout /t 5 > nul 
type ZK.txt 
echo.
echo a [35mZeta-Form[0m
echo. 
echo you know what to do...
echo.
echo [1m orders is to [31mKILL[0m [1m the [35mZeta-Form[0m [1m at any costs
timeout /t 5 > nul
call hateful.bat
