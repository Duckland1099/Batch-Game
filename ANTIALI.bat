@echo off
if %fight1% == 2 (goto blockadescont)
set /a HP = 100
set /a Def = 10
set /a att = 5
:hideout
type ALIL.txt
echo.
echo you arrived to the ALI hideout, you know time could be running out...
echo.
echo but that wont stop you
echo.
echo at least ALI still isnt a large threat as their threat is %ALIthreat% as right now but that will change soon...
pause
:QTE1
Set /A ALIthreat = %ALIthreat% + 1
choice /t 10  /c YN /d N /m "you see a group of ALI cultists, seek cover ASAP"
if %errorlevel%== 1 (goto cover1)
if %errorlevel%== 2 (goto seen1)
:cover1
echo.
echo you took cover and they did not saw you, allowing to get deeper into the hideout
echo. 
pause 
type door.txt
echo.
echo you see a door... but it requires a code, looks like you will need to find it
Set /A ALIthreat = %ALIthreat% + 1
:fork
echo. 
echo there's a fork in the path, do you go to the right or left path
set /p path1= 
echo.
if /i "%path1%" == "right" goto rightpath
if /i "%path1%" == "left" goto leftpath
echo that's not a correct response to the question
echo.
echo please press any key to retry
goto fork
:rightpath
echo.
echo you took the right path
choice /t 10  /c YN /d N /m "you saw more ALI cultists, take cover"
if %errorlevel%== 1 (goto cover2)
if %errorlevel%== 2 (goto seen2)
:cover2 
Set /A ALIthreat = %ALIthreat% + 1
echo.
echo you took cover and they did not saw you
echo.
echo you heard something on the PA system saying...
echo.
echo they're getting the portal ready for  [23m [35m "them" [0m
echo.
echo you really should find the code and maybe after, shut down the power to the hideout
pause 
Set /A ALIthreat = %ALIthreat% + 5
echo.
echo currect ALI threat is [31m %ALIthreat% [0m
echo.
echo you found a room, and it had the code it's it's 3481
timeout /t 5 > nul  
echo.
echo. but you hear footsteps
choice /t 6 /c YN /d N /m "hide?"
if %errorlevel%== 1 (goto hiden)
if %errorlevel%== 2 (goto seen5)
:hiden
echo.
type box.txt
echo.
echo you hide under a box
echo.
echo you're under the box, you hear the ALI cultists talking about [23m [35m "them" [0m
echo. 
echo you think the [23m [35m "them" [0m is [35m Zeta-Korp [0m (ZK)...
echo.
echo you think, this will be bad if ZK gets in D6B, everything will go bad...
echo.
echo you know ALI will be stopped but... how much [31m lifes [0m will be lost?
Set /A ALIthreat = %ALIthreat% + 1
goto door
:Seen5
echo.
type fail1.txt
echo.
echo while thinking of hiding, ALI cultists saw you
echo.
echo you had been detected, retry?
set /p fail6=
if /i "%fail6%" == "yes" goto cover2
if /i "%fail6%" == "no" goto End
:leftpath 
echo.
echo you took the left path
Set /A ALIthreat = %ALIthreat% + 1
echo.
pause
type vent.txt 
echo.
echo you see a vent, if you take it, it could help you of finding the code
choice /t 10  /c YN /d N /m "take the vent?"
if %errorlevel%== 1 (goto vent)
if %errorlevel%== 2 (goto seen3)
:vent
Set /A ALIthreat = %ALIthreat% + 1
type vento.txt
echo.
echo you went in the vent
pause
echo.
echo you dropped down into a room, luckiy noone heard that but...
echo.
echo you heard something on the PA system saying...
echo.
echo they're getting the portal ready for [23m [35m "them" [0m
echo.
echo you really should find the code and maybe after, shut down the power to the hideout
pause 
Set /A ALIthreat = %ALIthreat% + 5
echo.
echo currect ALI threat is  [31m %ALIthreat% [0m
pause
echo.
echo in the same room you fould the code for the locked door, it's 3481
echo.
echo you hear footsteps, you used the objects around you to get back to the vent
choice /t 5  /c YN /d N /m "Get to to the vent"
if %errorlevel%== 1 (goto vent2)
if %errorlevel%== 2 (goto seen4)
:vent2
type vento.txt
echo.
echo you're back in the vent, you hear the ALI cultists talking about [23m [35m "them" [0m
echo. 
echo you think the [23m [35m "them" [0m is [35m Zeta-Korp [0m (ZK)...
echo.
echo you think, this will be bad if ZK gets in D6B, everything will go bad...
echo.
echo you know ALI will be stopped but... how much [31m lifes [0m will be lost? 
Set /A ALIthreat = %ALIthreat% + 1
goto door
:door
echo.
echo you went back to the door
echo.
echo enter the code
set /p code= 
echo.
if /i "%code%" == "3481" goto open1
echo.
echo wrong code 
echo.
echo please press any key to retry
goto door
:open1
type dooru.txt
echo.
echo with the door unlocked, you'll likely find intel about ALI's plans, and maybe the control room
echo.
Set /A ALIthreat = %ALIthreat% + 2
echo you went in the room
echo.
echo the area seems to be alot darker than the last area
pause
type pc.txt
echo.
echo you found something, it's confirmed, ALI   [1mIS[0m trying to let [35m ZK [0m in D6b again, if you shutdown the power to the hideout
echo.
timeout /t 2 > nul  
echo you could make ALI less of a threat 
choice /t 30  /c YN /d N /m "will you shutdown the power?"
if %errorlevel%== 1 (goto Shutdown)
if %errorlevel%== 2 (goto Noshutdown)
:Shutdown
echo.
echo you decided to shutdown the power to the hideout
echo. 
echo you try to find the generator room
echo.
timeout /t 3 > nul  
choice /t 5  /c YN /d N /m "you see a group of ALI cultists, seek cover"
if %errorlevel%== 1 (goto Gen)
if %errorlevel%== 2 (goto seen5)
:Gen
echo.
echo you took cover, and they didnt see you
echo.
echo after a bit you found the generator room
pause 
type power.txt
echo.
echo you see the power swtich to the generators
echo. 
echo you filped the switch, turning it off
pause
type poweroff.txt
echo.
echo you turned off the power making the ALI threat less
Set /A ALIthreat = %ALIthreat% - 5
echo.
echo you can safely return to base
echo.
echo currect ALI threat is [31m %ALIthreat% [0m
goto planpart3on
set power = "1"
:Noshutdown
echo.
echo you didnt decided to shutdown the power, as it could be too risky
choice /t 5  /c YN /d N /m "you see a group of ALI cultists, seek cover"
if %errorlevel%== 1 (goto part2)
if %errorlevel%== 2 (goto seen5)
:part2
echo.
echo you safely got out of the hideout, you couldnt turn off the power, but at least that wont a big setback right...?
Set /A ALIthreat = %ALIthreat% + 1
echo currect ALI threat is [31m %ALIthreat% [0m
goto planpart3off
:planpart3on
type ascii-art.txt
echo.
echo [32m you have returned from the ALI hideout, i see you found out about ALI's plans of letting ZK back into D6B
echo which isnt good at all
echo. 
echo and you turned off their power? that's great, it'll give us more time to plan out great work
echo.
echo because of what you did, we'll reward you with a new weapon, will help if ALI's plan will work, which i hope it wont
echo. 
echo but who knows...
set /a att = att + 5
timeout /t 2 > nul 
goto planpart3cont
:planpart3off
type ascii-art.txt
echo.
echo [32myou have returned from the ALI hideout, i see you found out about ALI's plans of letting ZK back into D6B
echo which isnt good at all
echo. 
:planpart3cont
echo.
echo okay for the next step for the plan is to do setup a blockade around the hideout so ALI wont be able to get anything out nor in
echo. 
echo it shouldnt be hard, but ALI will try to stop us setup the blockade, so y'know dont let them
echo.
echo you'll be in charge of setting up the blockade at the west, the other teams will setup the other blockades around the other areas[0m
Set /A ALIthreat = %ALIthreat% + 1
echo.
goto blockade
:blockade
echo.
pause
echo.
Set /A ALIthreat = %ALIthreat% + 2
echo you're now at the AO, getting the blockades up
echo.
echo as you're setting up the blockade, you see a few ALI cultists trying to stop you.
echo.
call battle1.bat
:blockadescont
echo.
echo that's taken care of, you offcially free to setup the blockades 
echo.
echo after a bit, the blockades is up blocking off all suppies for ALI
timeout /t 2 > nul
Set /A ALIthreat = %ALIthreat% - 2
echo.
echo the ALI threat is now [91m%ALIthreat%[0m
echo. 
echo head back to  base
echo.
pause
type ascii-art.txt
echo.
echo [32myou have returned from setting up the blockades around the ALI hideout
if "%ALIthreat%" gtr "13" (goto highthreat)
if "%ALIthreat%" lss "12" (goto lowthreat)
:highthreat
echo.
type warn.txt
echo.
echo well, we got reports that ALI is opening the portal for [35mZK[0m,[32m why didn't we shutdown the power?
echo.
echo we need everyone going to the ALI hideout again to shutdown the power, take care of any ALI cultists... and maybe some [35mZeta Forms[0m
echo. 
pause
echo [32m we need to end ALI for once and for all
echo. 
echo but you wont surive with just your old weapon and amour
echo.
echo you'll get a new weapon and amour
echo.
set /a att = 15
set /a def = 17
set /a HP = 100
echo.
echo your attack is now [92m%att%[0m and defense is now [94m%def%[0m
echo. 
echo [32m now go and prevent the [35mZK[0m from taking over D-6B![0m
goto finalend
:finalend
echo.
echo you arrived at the ALI hideout for the 3rd time, but this time it's to the save D-6B
echo.
echo you see a heavy ALI cultist, and they attack you
call battle2b.bat
:lowthreat
echo.
echo [32m ALI's power on their main hideout is weak, it's the best time to strike them, ending ALI for once and for all
echo.
echo and hey, they wont have time to open their portal for the [35mZK[0m
echo.
pause
echo [32m but first let's give you new amour, it'll help you [0m
echo.
set /a def = 18
echo your defense is now [94m%def%[0m
set /a HP = 100
echo.
echo [32m now go mess them up![0m
goto finalbattles
:finalbattles
echo.
echo you arrived at the ALI hideout for the 3rd time, but this time it's the end for them
echo.
echo you see a heavy ALI cultist, and they attack you
call battle2a.bat
:Seen5
echo.
type fail1.txt
echo.
echo you had been detected, retry?
set /p fail2=
if /i "%fail2%" == "yes" goto open1
if /i "%fai2%" == "no" goto End
:Seen4 
echo.
type fail1.txt
echo.
echo while thinking of getting back in the vent, ALI cultists saw you
echo.
echo you had been detected, retry?
set /p fail4=
if /i "%fail4%" == "yes" goto vent
if /i "%fai4%" == "no" goto End
:Seen3
echo.
type fail1.txt
echo.
echo while thinking of going in the vent, ALI cultists saw you
echo.
echo you had been detected, retry?
set /p fail1=
if /i "%fail1%" == "yes" goto leftpath
if /i "%fail1%" == "no" goto End
:Seen2
echo.
type fail1.txt
echo.
echo you had been detected, retry?
set /p fail2=
if /i "%fail2%" == "yes" goto fork
if /i "%fai2%" == "no" goto End
:Seen1
echo.
type fail1.txt
echo.
echo you had been detected, retry?
set /p fail3=
if /i "%fail3%" == "yes" goto Hideout
if /i "%fai3%" == "no" goto End
:End
echo.
echo mission failed, ALI became a major threat
