@echo off  
Set /a fight2 = 0
:reset
echo.
set /a ALIHP1=50
set /a ALIatt1=35
set /a ALIdef1=4
set /a medkits = 2
set /a ALIkits=3
type ALIcult.txt
type line.txt
echo.
echo ALI cultist stats: HP=[91m%ALIHP1%[0m att=[92m%ALIatt1%[0m  Def=[94m%ALIdef1%[0m
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /a defe2 = 0
:choice 
if "%HP%" == 0 goto death1
echo stats: HP=[91m%HP%[0m att=[92m%att%[0m  Def=[94m%def%[0m
echo you have %medkits% medkits
echo.
echo options: Attack / Defend / Heal
set /p action1=
if /i "%action1%" == "Attack" goto attack1
if /i "%action1%" == "Defend" goto defend1
if /i "%action1%" == "Heal" goto heal1
echo.
echo that's not a correct response to the question
echo.
echo please press any key to retry
pause
goto choice
:heal1 
echo.
if %medkits% == 0 goto nomedkits
if %medkits% GTR "0" goto healing
:nomedkits
echo you ran out of medkits you cannot heal yet 
goto choice 
:healing
echo you healed to max
echo.
set /a HP = 100
echo your HP is now [91m%HP%[0m
set /a medkits = %medkits% - 1
goto ALIchoice
:defend1
echo.
echo you defended, you take half damage 
set /a defe=%ALIatt1% /2
echo.  
pause
goto ALIchoice
:attack1
echo. 
set /a defe=0
echo you attcked the ALI cultist 
echo.
echo.
set /a damage1=%att% - %ALIdef1% - %defe2%
set /a ALIHP1=%ALIHP1% - %damage1%
if %ALIHP1% lss 0 (set /a ALIHP1 = 0)
echo ALI HP = [91m%ALIHP1%[0m
set /a defe2 = 0
if %ALIHP1% == 0 goto win
pause
:ALIchoice
set /a ALIchoice = (%random%%%3) + 1
if %ALIchoice%==1 goto ALIattack1
if %ALIchoice%==2 goto ALIdefend1
if %ALIchoice%==3 goto ALIheal1
:ALIattack1
set /a damage2=%ALIatt1% - %def% - %DEFE%
set /a HP=%HP% - %damage2%
echo.
echo the ALI cultist attacked you
echo.
if %HP% lss 0 (set /a HP = 0)
echo your HP = [91m%HP%[0m
pause
goto choice
:ALIdefend1
set /a defe2 = %att% /2
echo.
echo the ALI cultist defended, making it take half damage next turn
echo.
pause
goto choice
:ALIheal1
if  %ALIkits% == 0 goto ALInokits
if %ALIkits% GTR "1" goto  ALIheal
:ALInokits
echo.
goto ALIchoice
:ALIheal
set /a heal1 = 10
set /a ALIHP1 = %ALIHP1% + %heal1%
set /a ALIkits = %ALIkits% - 1
echo.
echo the ALI cultist healed themself by 10 
echo.
echo ALI HP = [91m%ALIHP1%[0m
goto choice
:death
type fail1.txt
echo.
echo you died, game over... try again ?
set /p fail3=
if /i "%fail3%" == "yes" goto retry 
if /i "%fai3%" == "no" goto End
:retry
set /a HP = 100
goto reset
:win
type winb.txt
echo.
echo you beat the ALI cultist 
echo.
echo oh wait, you got an idea, stealing their weapon
echo.
echo will you steal the weapon?
set /p steal=
if /i "%steal%" == "yes" goto stealweapon
if /i "%steal%" == "no" goto nossteal
echo.
echo that's not a correct response to the question
echo.
echo please press any key to retry
pause
goto win
:stealweapon
echo. 
echo you stole the weapon
set /a att = 20
goto stole
:nossteal
echo.
echo you didnt steal the weapon for a dumb reason
:stole
echo.
echo you can try going deeper in the hideout
call itend.bat