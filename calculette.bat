@echo off
title calculette
color 0A

:Main
echo Votre dernier calcul etait %sum%
echo.
echo Veuillez faire un choix..
echo.
echo a)Addition
echo.
echo b)Soustraction
echo.
echo c)Division
echo.
echo d)Multiplication
echo.
echo.

set /p do="Choix: "

if %do%==a goto add
if %do%==A goto add
if %do%==b goto sub
if %do%==B goto sub
if %do%==c goto div
if %do%==C goto div
if %do%==d goto mul
if %do%==D goto mul
echo.
cls
echo Choix invalide = %do%
echo.
pause
cls
goto main

:add
cls
echo ADDITION
echo.
set /p no1="num1. "
echo.
set /p no2="num2. "
set /a sum=no1+no2
echo -----------
echo %sum%
echo.
pause
cls
goto main

:sub
cls
echo SOUSTRACTION
echo.
set /p no1="num1. "
echo.
set /p no2="num2. "
set /a sum=no1-no2
echo -----------
echo %sum%
echo.
pause
cls
goto main

:div
cls
echo DIVISION
echo.
set /p no1="num1. "
echo.
set /p no2="num2. "
set /a sum=no1/no2
echo -----------
echo %sum%
echo.
pause
cls
goto main

:mul
cls
echo MULTIPLICATION
echo.
set /p no1="num1. "
echo.
set /p no2="num2. "
set /a sum=no1*no2
echo -----------
echo %sum%
echo.
pause
cls
goto main
