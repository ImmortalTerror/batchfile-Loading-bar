@echo off
set load=
set /a loadnum=0
set /a loadlvl=1

:Loading
mode CON: LINES=6 COLS=30
set load=%load%0
cls
echo.
if %loadlvl%==1 echo            Text A
if %loadlvl%==2 echo            Text B
if %loadlvl%==3 echo            Text C
echo ------------------------------
echo      %load%
echo ------------------------------

if %loadlvl%==1 timeout /t 1 /nobreak >nul
if %loadlvl%==2 ping localhost /n 1 >nul
if %loadlvl%==3 ping localhost /n 2 >nul
set /a loadnum=%loadnum%+1
if %loadnum%==6 set /a loadlvl=2
if %loadnum%==18 set /a loadlvl=3
if %loadnum%==20 goto :Done
goto Loading

:Done
cls
pause