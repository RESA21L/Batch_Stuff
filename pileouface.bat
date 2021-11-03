@echo off
Title Pile ou Face!

:main
cls
set argent=100

:jeu
echo Vous avez %argent%$
echo --------------------
set /p mise="Combien vous misez?: "
if "%mise%" gtr "%argent%" goto error
echo --------------------
set /p choix="Pile ou Face?: "
echo Pour flipper le coin appuie sur enter
set /p enter=

set /a resultat=%random% %% 2+1

if "%resultat%"=="1" (echo Pile!) else goto face
if "%choix%"=="Pile" set /a argent=argent+mise
if "%choix%"=="Face" set /a argent=argent-mise
if %argent%==0 goto end
pause
goto jeu


:face
echo Face!
if "%choix%"=="Face" set /a argent=argent+mise
if "%choix%"=="Pile" set /a argent=argent-mise
if %argent%==0 goto end
pause
goto jeu


:end
echo Vous avez pu une cenne!
pause
exit


:error
cls
echo Vous n'avez pas assez d'argent
pause
cls
goto jeu
