@echo off  
if %fight2% == 2 goto deep
if %fight2% == 0 goto notdeep
set /a fight3 = 0
:notdeep
echo.
echo you went deeper inside the hideout, and from a window you see the portal...
echo.
echo and ALI cultists rushing to turn on the portal but you know they wont have the time to do so
echo.
echo you should go to the portal room, and block any more ALI cultists from entering and breaking the portal stopping ALI
echo.
pause
echo but at any minute they could try to turn on the portal but if you're fast they cant fully activate it
echo.
echo everything was fine until see they're trying to cave in the facility stopping you
Timeout /NOBREAK /t  3 > nul
echo.
echo you see a 2 ALI cultists
call battle3.bat
:deep
echo.
echo the facility is starting to cave in around you, you'll need to rush to the portal room
echo you see heavy ALI cultist looking at you
echo. 
echo but you see a rock
type rock.txt 
echo.
Timeout /NOBREAK /t  3 > nul
choice /t 5  /c YN /d N /m "throw the rock?"
if %errorlevel%== 1 (goto throw)
if %errorlevel%== 2 (goto cheese)
:cheese
echo.
echo you didnt throw the rock allowing the heavy ALI cultist to beat you up
goto faild
:throw
echo.
echo you throw a rock at to the heavy ALI cultist, stunning him for a bit, allowing you to use CQC on him
echo.
echo you think about it, you could steal his amour, will you?
set /p steal2=
if /i "%steal2%" == "yes" goto stealamour
if /i "%steal2%" == "no" goto nossteal1
echo.
echo that's not a correct response to the question
echo.
echo please press any key to retry
pause
goto throw
:stealamour
echo. 
echo you stole the amour
set /a def = 22
goto cont2
:nossteal1
echo.
echo you didnt steal the amour for a dumb reason
:cont2
set /a HP = 100
echo.
pause
echo you got out of the part of this facility which was caving in, getting closer to the portal in
echo.
echo you see the portal room again this time even closer and the portal...
echo. 
echo is turning on
echo.
echo you see a vent which will lead to the portal room and you'll take it
type vento.txt
echo you took the vent
echo.
:portalroom
pause
echo you're now in the portal room
echo. 
echo seeing a few ALI cultist around the portal and a few more in the portal control room
echo. 
echo you tell base that you're in the portal room, and tell base to lock down the other areas so they wont be able get out nor in
echo.
echo this will be the end from them
echo. 
echo you igored the other ALI cultist and run to the portal control room
Timeout /NOBREAK /t  3 > nul
echo.
type doorb.txt
echo.
echo you broke down the door to the portal control room
echo.
set /a HP = 100
echo. 
echo you tried shutting off power to the portal but the ALI leader show up, stopping you from shutting off power to the portal
echo.
echo you'll need to fight him
call finalbattlea.bat
:faild
echo.
type fail1.txt
echo.
echo you're dead retry?
set /p fail3=
if /i "%fail3%" == "yes" goto cont
if /i "%fai3%" == "no" goto End
:End
echo.
echo mission failed