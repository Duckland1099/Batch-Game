@echo off
color 07
set /a fight1 =1
type Ducks.txt
echo.
::the start
echo  year 3065 you were on very small PMC which didnt lasted for even a year, but still fight for good
echo and wanting to join another PMC
:JoinPMC1
echo.
echo Will you join Tenacity Warriors (TW)
choice /t 30  /c YN /d N /m "apply?"
if %errorlevel%== 1 (goto TW)
if %errorlevel%== 2 (goto SH)
:NoPMC1
echo. 
echo well then how about you join Altruism Lightbearer Institute (ALI) then?
choice /t 300  /c YN /d N /m "join?"
if %errorlevel%== 1 (goto ALI)
if %errorlevel%== 2 (goto ending1)
:: RNG element
:TW
timeout /t 2 > nul
type TW.txt
echo. 
echo applying...
set /a TWjoin = (%random%%%2)
if /i %TWjoin% == 1 (goto TWjoined)
if /i %TWjoin% == 2 (goto faila)



:faila
Timeout /NOBREAK /t  2 > nul
echo they didnt wanted you
goto SH
:TWjoined
Timeout /NOBREAK /t  2 > nul
echo.
echo you joined TW
goto plan

:SH
timeout /t 2 > nul
type SH.txt
echo. 
echo. this is your 2nd chance to be in a PMC dont mess it up now
echo.
echo Will you join Shadow (SH)
choice /t 30  /c YN /d N /m "apply?"
if %errorlevel%== 1 (goto SHa)
if %errorlevel%== 2 (goto RN)
:SHa
echo applying...
set /a SHjoin = (%random%%%2)
if /i %SHjoin% ==1 (goto SHjoined)
if /i %SHjoin% ==2 (goto fail2)
:SHjoined
echo.
echo you joined SH
goto plan
:fail2
pause
echo they didnt wanted you
goto RN
:RN
type RN.txt
echo. 
echo 3rd chance to be in a PMC
echo Will you join Rouge Nova (RN)
choice /t 30  /c YN /d N /m "apply?"
if %errorlevel%== 1 (goto RNa)
if %errorlevel%== 2 (goto NoPMC1)
:RNa
echo applying...
set /a RNjoin = (%random%%%2)
if /i %RNjoin% ==1 (goto RNjoined)
if /i %RNjoin% ==2 (goto fail3)

:RNjoined
pause
echo.
echo you joined RN
goto plan
:fail3
pause
echo. 
echo you couldnt join RN
goto NoPMC1
:ALI
type ALI.txt
echo. 
echo woah hold on there, do you know what's ALI plan is? They're a cult and trying to let Zeta Korp in Diogenes-6b again
echo. 
echo think about it. are you really sure if you want to join
set /p ALIjoin=
if "%ALIjoin%" == "yes" (timeout /t 0 > nul)
if /i "%ALIjoin%" == "yes" goto ALIroute
if /i "%ALIjoin%" == "no" goto AbortedALI
echo that's not a correct response to the question
echo.
echo please press any key to retry
timeout /t -1 > nul  
goto ALI
:ALIroute
echo.
echo you will regret this, nobody is issane enough to join THEM
echo you lost duckanity, how anyone is willing to bring the ZETA KORP in, they are able to...
echo.
pause
echo destroy everything
echo.
echo are you really sure?
set /p ALIjoin1=
echo.
if "%ALIjoin1%" == "yes" (timeout /t 0 > nul)
if /i "%ALIjoin1%" == "yes" goto ALIa
if /i "%ALIjoin1%" == "no" goto AbortedALI
echo that's not a correct response to the question
echo.
echo please press any key to retry
timeout /t -1 > nul  
goto ALIroute
:ALIa
echo.
echo y'know what i give up, you can join ALI but you wont see another day soon
echo. 
pause
echo just you watch...
call ALIR.bat  
:AbortedALI
echo.
echo  smart move, eh? you dodged being hunted by Diogenes-6b Watchmen Group (DWG)
echo.
echo  looks like, you wont join any one then and leaving the war ecoonmy
echo. 
goto ending1
:plan 
type  ascii-art.txt
echo.
echo  [32m now you either joined TW, SH or RN
echo.
pause
echo you would be on the Diogenes-6b Watchmen Group (DWG) then, watching out the Zeta Korp (ZK)
echo.
echo however, after over 60 years that Altruism Lightbearer Institute (ALI) was gone, reports there was
echo.
pause
echo remaining ALI cultists which SN didnt eliminated, and because of it, they was able to
echo. 
echo create a new hideout on Diogenes-6b, and trying to bring ZK into D6B once again
echo. 
pause
echo we cannot let that happen, we must find their hideout and if there's more than one hideout
echo.
echo destroy those too
echo. 
echo first we need to find where the hideout(s) will be
echo.
echo so far we think the hideout for them could be either at Massus, Aisa or Ma-livinsa, we need you make sure it's
echo. 
echo it's in one's of the island [0m
echo.
echo type one of those 3 places
:intel
set /p Intelfind=
echo.
if /i "%Intelfind%" == "Massus" goto Massus
if /i "%Intelfind%" == "Aisa" goto Aisa
if /i "%Intelfind%" == "Ma-livinsa" goto Malivinsa
echo that's not a correct response to the question
echo.
echo please press any key to retry
goto intel
:Malivinsa
type Ma-livinsa.txt
echo. 
timeout /t 2 > nul
echo you scanned the Ma-livinsa islands...
set /a Malivinsa = (%random%%%2) + 1
if /i %Malivinsa% ==1 (goto ScannedMM)
if /i %Malivinsa% ==2 (goto NothingMM)
:ScannedMM
set island= Ma-livinsa
echo.
echo You succfully found the ALI hideout
goto PlanPart1
:NothingMM
echo.
echo you couldnt find any ALI hideout report back to base
goto base59
:Base59
type ascii-art.txt
echo.
echo try scanning Massus or Aisa then, as it's not on Ma-livinsa	
set /p Intelfind4=
echo.
if /i "%Intelfind4%" == "Massus" goto Massus77
if /i "%Intelfind4%" == "Aisa" goto Aisa3
echo that's not a correct response to the question
echo.
echo please press any key to retry
goto Base59
:Aisa3
type aisa.txt
echo. 
echo you scanned the Aisa island...
timeout /t 2 > nul
set /a Aisa = (%random%%%2) + 1
if /i %Aisa% ==1 goto Scanned19
if /i %Aisa% ==2 goto Nothing19
:Nothing19
echo.
echo you couldnt find any ALI hideout report back to base
goto baseMA
:BaseMA
set island= Massus
type ascii-art.txt
echo.
echo ALI is really good at hiding but they cant find for long
echo.
echo their hideout gotta be on Massus then
echo.
echo on to the next step in the plan
goto PlanPart1
:Scanned19
set island= Aisa
echo.
echo You succfully found the ALI hideout
goto PlanPart1
:Massus77
type Massus.txt
echo.
echo you scanned the Massus island...
timeout /t 2 > nul
set /a Massus = (%random%%%2) + 1
if /i %Massus% ==1 (goto Scanned165)
if /i %Massus% ==2 (goto Nothing155)
:Scanned165
set island= Massus
echo.
echo You succfully found the ALI hideout
goto PlanPart1
:Nothing155
echo.
echo you couldnt find any ALI hideout report back to base
goto baseAA
:BaseAA
set island= Aisa
type ascii-art.txt
echo.
echo ALI is really good at hiding but they cant find for long
echo.
echo their hideout gotta be on Aisa then
echo.
echo on to the next step in the plan
goto PlanPart1
:Scanned19
:Aisa
type aisa.txt
echo. 
echo you scanned the Aisa island...
timeout /t 2 > nul
set /a Aisa = (%random%%%2) + 1
if /i %Aisa% ==1 goto Scanned1A
if /i %Aisa% ==2 goto Nothing12
:Massus
type Massus.txt
echo.
echo you scanned the Massus island...
timeout /t 2 > nul
set /a Massus = (%random%%%2) + 1
if /i %Massus% ==1 (goto Scanned1)
if /i %Massus% ==2 (goto Nothing1)
:Nothing12
echo.
echo you couldnt find any ALI hideout report back to base
goto base12
:Base12
type ascii-art.txt
echo.
echo try scanning Massus or Ma-livinsa then, as it's not on Aisa
set /p Intelfind4=
echo.
if /i "%Intelfind4%" == "Massus" goto Massus2
if /i "%Intelfind4%" == "Ma-livinsa" goto Ma-livinsa3
echo that's not a correct response to the question
echo.
echo please press any key to retry
goto Base12
:Ma-livinsa3
type Ma-livinsa.txt
echo. 
timeout /t 2 > nul
echo you scanned the Ma-livinsa islands...
set /a Malivinsa = (%random%%%2) + 1
if /i %Malivinsa% ==1 (goto Scanned6)
if /i %Malivinsa% ==2 (goto Nothing6)
:Massus2
type Massus.txt
echo. 
timeout /t 2 > nul
echo you scanned the Massus islands...
set /a Malivinsa = (%random%%%2) + 1
if /i %Malivinsa% ==1 (goto Scanned7)
if /i %Malivinsa% ==2 (goto Nothing7)
:Scanned7
set island= Massus
echo.
echo You succfully found the ALI hideout
goto PlanPart1
:Nothing7
echo. 
echo you couldnt find the ALI hideout at Massus
echo.
echo report back to base
goto base9
:base9
set island= Ma-livinsa
type ascii-art.txt
echo.
echo ALI is really good at hiding but they cant find for long
echo.
echo their hideout gotta be on Ma-livinsa then
echo.
echo on to the next step in the plan
goto PlanPart1
:Scanned6
set island= Ma-livinsa
echo.
echo You succfully found the ALI hideout
goto PlanPart1
:Nothing6
echo. 
echo you couldnt find the ALI hideout at Ma-livinsa
echo.
echo report back to base
goto base9
:base9
set island= Massus
type ascii-art.txt
echo.
echo ALI is really good at hiding but they cant find for long
echo.
echo their hideout gotta be on Massus then
echo.
echo on to the next step in the plan
goto PlanPart1
:Scanned1A
set island= Aisa
echo.
echo You succfully found the ALI hideout
goto PlanPart1
:Scanned1
set island= Massus
echo.
echo You succfully found the ALI hideout
goto PlanPart1
:Nothing1
echo.
echo you couldnt find any ALI hideout report back to base
goto base
:base
type ascii-art.txt
echo.
echo try scanning Aisa or Ma-livinsa then, as it's not on Massus
set /p Intelfind2=
echo.
if /i "%Intelfind2%" == "Aisa" goto Aisa2
if /i "%Intelfind2%" == "Ma-livinsa" goto Ma-livinsa2
echo that's not a correct response to the question
echo.
echo please press any key to retry
goto base
:Ma-livinsa2
type Ma-livinsa.txt
echo. 
timeout /t 2 > nul
echo you scanned the Ma-livinsa islands...
set /a Aisa = (%random%%%2) + 1
if /i %Aisa% ==1 (goto ScannedM)
if /i %Aisa% ==2 (goto NothingM)
:ScannedM
set island= Ma-livinsa
echo You succfully found the ALI hideout
goto PlanPart1
:NothingM
echo. 
echo you couldnt find the ALI hideout at Ma-livinsa
echo.
echo report back to base
goto baseM
:Aisa2 
type aisa.txt
echo. 
timeout /t 2 > nul
echo you scanned the Aisa island...
set /a Aisa = (%random%%%2) + 1
if /i %Aisa% ==1 (goto Scanned2)
if /i %Aisa% ==2 (goto Nothing2)
:Scanned2
set island= Aisa
echo You succfully found the ALI hideout
goto PlanPart1
:Nothing2
echo. 
echo you couldnt find the ALI hideout at Aisa
echo.
echo report back to base
goto base2
:base2
set island= Ma-livinsa
type ascii-art.txt
echo.
echo ALI is really good at hiding but they cant find for long
echo.
echo their hideout gotta be on Ma-livinsa then
echo.
echo on to the next step in the plan
goto PlanPart1
:PlanPart1 
pause
type ascii-art.txt
echo.
echo [32mWe need you to sneak in that ALI hideout to find out what they're doing over there at %island%
echo. 
echo we cannot allow that ALI hideout exists for anymore, the longer the hideout is up, the [31mbigger threat [32mthey become [0m
Set /A ALIthreat = 0
call ANTIALI.bat
