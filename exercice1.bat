@echo OFF
echo.


:Function_Choices
echo 1. Choisir une interface reseau
echo 2. Configurer l'interface en DHCP
echo 3. Configurer l'interface manuellement
echo 4. Afficher infos reseau
echo 5. What is love?
echo 6. PING GOOGLE!!!
echo 7. Ouvrir notepad
echo q. Quitter

set /p choice=Choisir une option:

if '%choice%'=='1' goto Show_if
if '%choice%'=='2' goto Set_dhcp
if '%choice%'=='3' goto Set_static
if '%choice%'=='4' goto Info_nw
if '%choice%'=='5' goto Love
if '%choice%'=='6' goto Ping
if '%choice%'=='7' goto Notepad
if '%choice%'=='q' goto Quit

echo.
echo "%choice%" n'est pas valide!
pause
goto Function_Choices

:Show_if
echo voici les interface reseaux
echo.
netsh interface ipv4 show interface
goto :Make_choice

:Make_choice
set /p choice_if=Votre choix?
echo.
set /p choice_3="Voulez-vous configurer linterface en static(1) ou DHCP(2)?"
echo.
if '%choice_3%'=='1' goto Set_static
if '%choice_3%'=='2' goto Set_dhcp


:Set_dhcp
echo Vous serez configure en DHCP maintenant!
echo.
netsh interface ipv4 set address name=%choice_if% source=dhcp
pause
goto Quit

:Set_static
netsh interface ipv4 set address name=%choice_if% source =static address=192.168.1.150 mask=255.255.255.0 192.168.1.1
echo IP change en static!
Pause
Goto Quit

:Info_nw
echo Voici les infos de votre reseau:
echo.
netsh interface ipv4 show config
pause
goto Quit

:Love
echo Baby dont hurt me, no more!
echo.
pause
goto Quit

:Ping
echo "Envoie d'un ping a google ( 1.1.1.1 )"
echo.
ping 1.1.1.1
pause

:Notepad
echo Je vais ouvrir notepad vu que tu es lache...
notepad
notepad
notepad
notepad
echo tiens amuse toi le noob
goto Quit

:Quit
