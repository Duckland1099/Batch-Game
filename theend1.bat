@echo off
:restart
type portal.txt
echo.
echo the fight took too long... their portal is active but there's to no way ZK could of enter D6B this soon
echo.
echo you will have time to shutdown the portal
echo.
Timeout /NOBREAK /t  5 > nul
type button.txt
echo.
choice /t 3  /c YN /d N /m "SHUT DOWN THE POWER NOW"
if %errorlevel%== 1 (goto shut)
if %errorlevel%== 2 (goto ZK)
:ZK
echo.
echo you took too long to decide...
echo.
echo a [35m Zeta-Form[0m entered the portal room...
echo. 
pause
type fail1.txt
echo as you were unprepared... you died try again?
set /p fai3=
if /i "%fai3%" == "yes" goto restart
if /i "%fai3%" == "no" goto End
:shut
echo.
echo.
echo.
echo.
echo you shut off the power...
echo.
echo the power should be turned off now...
echo.
echo wait...
Timeout /NOBREAK /t  5 > nul
color 04
echo.
echo the portal became unstable...
type portalu.txt
Timeout /NOBREAK /t  2 > nul
type portal.txt
Timeout /NOBREAK /t  2 > nul
type portalu.txt
Timeout /NOBREAK /t  5 > nul
echo.
echo you report the situnation to base
echo.
echo base tells you to get out of %island% to be fully safe, becasue a time rip will happen... or worse
color 00
echo.
echo you tried to get out of %island% but the portal was so unstable... it broke even before you was able to get out of the portal room...
Timeout /NOBREAK /t  5 > nul
type end.txt
echo.
echo or to be continued... 
pause
:end
echo.
echo game over the ZK took over D6B
 