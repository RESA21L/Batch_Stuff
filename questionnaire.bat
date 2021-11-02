@echo off

Title Questionnaire

:main
cls
set /p "nom=Quel est votre nom?: "
set /p "courriel=Quel est votre courriel?: "
set /p "age=Quel votre age?: "
set /p "adresse=Quel est votre adresse?: "
set /p "banane=Aimez-vous les bananes?: "

echo Est-ce que ces informations sont correctes?
echo --------------------------
echo Nom: %nom%
echo Courriel: %courriel%
echo Age: %age%
echo Adresse: %adresse%
echo Aime les bananes?: %banane%
echo --------------------------
set /p "reponse=Oui ou Non?: "

if "%reponse%"=="Non" goto main
if "%reponse%"=="non" goto main
if "%reponse%"=="N" goto main
if "%reponse%"=="n" goto main

if "%reponse%"=="Oui" goto save
if "%reponse%"=="oui" goto save
if "%reponse%"=="O" goto save
if "%reponse%"=="o" goto save

:save
echo Nom: %nom% > C:\Users\neoh\Desktop\Questionnaire.txt
echo Courriel: %courriel% >> C:\Users\neoh\Desktop\Questionnaire.txt
echo Age: %age% >> C:\Users\neoh\Desktop\Questionnaire.txt
echo Adresse: %adresse% >> C:\Users\neoh\Desktop\Questionnaire.txt
echo Aime les bananes?: %banane% >> C:\Users\neoh\Desktop\Questionnaire.txt
pause
echo --------------------------
echo Parfait, termine!



