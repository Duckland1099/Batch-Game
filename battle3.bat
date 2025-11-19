@echo off  
:reset
echo.
set /a ALIHP1=35
set /a ALIatt1=20
set /a ALIdef1=6
set /a medkits = 3
set /a ALIkits1=3
set /a ALIHP2=30
set /a ALIatt2=20
set /a ALIdef2=6
set /a ALIkits2=1
type ALIcult.txt
type line.txt
echo.
echo ALI cultist stats: HP=[91m%ALIHP1%[0m att=[92m%ALIatt1%[0m  Def=[94m%ALIdef1%[0m
echo 2nd ALI cultist stats: HP=[91m%ALIHP2%[0m att=[92m%ALIatt2%[0m  Def=[94m%ALIdef2%[0m
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
if %ALIHP1% == 0 goto check1
if %ALIHP2% == 0 goto check2
:choicecont
if "%HP%" == 0 goto death1
echo stats: HP=[91m%HP%[0m att=[92m%att%[0m  Def=[94m%def%[0m
echo you have %medkits% medkits
echo.
echo options: Attack / Defend / Heal
set /p action1=
if /i "%action1%" == "Attack" goto attackc
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
:attackc
echo.
echo which ALI cultist do you want to attack? the first or second (1/2)
set /p cultist=
if /i "%cultist%" == "1" goto attack1
if /i "%cultist%" == "2" goto attack2
:attack2
if %ALIHP2% == 0 goto info
echo. 
set /a defe=0
echo you attcked the second ALI cultist 
echo.
echo.
set /a damage1=%att% - %ALIdef2% - %defe2%
set /a ALIHP2=%ALIHP2% - %damage1%
if %ALIHP2% lss 0 (set /a ALIHP2 = 0)
echo ALI HP = [91m%ALIHP2%[0m
set /a defe2 = 0
if %ALIHP2% == 0 goto deadai2
goto ALIchoice
:info 
echo.
echo you cannot make someone deader
goto choice
:info2 
echo.
echo you cannot make someone deader
goto choice
:attack1
if %ALIHP1% == 0 goto info2
echo. 
set /a defe=0
echo you attcked the first ALI cultist 
echo.
echo.
set /a damage1=%att% - %ALIdef1% - %defe2%
set /a ALIHP1=%ALIHP1% - %damage1%
if %ALIHP1% lss 0 (set /a ALIHP1 = 0)
echo ALI HP = [91m%ALIHP1%[0m
set /a defe2 = 0
if %ALIHP1% == 0 goto deadai
pause
:ALIchoice
if %ALIHP1% == 0 goto ALIchoice2
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
goto alichoice2
:ALIdefend1
set /a defe2 = %att% /2 
echo.
echo the ALI cultist defended, making it take half damage next turn
echo.
pause
goto alichoice2
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
goto alichoice2
:ALIchoice2
if %ALIHP2% == 0 goto choice
set /a ALIchoice2 = (%random%%%3) + 1
if %ALIchoice2%==1 goto ALIattack2
if %ALIchoice2%==2 goto ALIdefend2
if %ALIchoice2%==3 goto ALIheal2
:ALIattack2
set /a damage2=%ALIatt2% - %def% - %DEFE%
set /a HP=%HP% - %damage2%
echo.
echo the ALI cultist attacked you
echo.
if %HP% lss 0 (set /a HP = 0)
echo your HP = [91m%HP%[0m
pause
goto choice
:ALIdefend2
set /a defe2 = %att% /2 
echo.
echo the ALI cultist defended, making it take half damage next turn
echo.
pause
goto choice
:ALIheal2
if  %ALIkits2% == 0 goto ALInokits2
if %ALIkits2% GTR "1" goto  ALIheal2
:ALInokits2
echo.
goto ALIchoice2
:ALIheal2
set /a heal2 = 10
set /a ALIHP2 = %ALIHP2% + %heal2%
set /a ALIkits2 = %ALIkits2% - 1
echo.
echo the ALI cultist healed themself by 10 
echo.
echo ALI HP = [91m%ALIHP2%[0m
goto choice
:deadai2
echo.
echo you took down an ALI cultist
set ALIHP2 = 0
goto ALIchoice
:deadai
echo you took down an ALI cultist
set ALIHP1 = 0
goto ALIchoice2
:check1
if %ALIHP2% == 0 goto win
goto choicecont
:check2
if %ALIHP1% == 0 goto win
goto choicecont
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
echo you beat the ALI cultists, at this rate, you'll take down the whole of ALI 
echo. 
echo.
:end
echo.
Set /a fight2 = 2
call itend.bat