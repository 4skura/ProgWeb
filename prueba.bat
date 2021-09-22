@ECHO OFF
title Invisible Mode
color 0a
CLS
:MAIN
ECHO.
ECHO.
ECHO              Invisible Mode for League of Legends made by Hotpockets 
ECHO.
ECHO.
ECHO   1 - Enable Invisible Mode                                                   
ECHO   2 - Disable Invisible Mode                                                  
ECHO   3 - EXIT                                                                    
ECHO.
ECHO.
SET /P M=Please pick a number:
IF %M%==1 GOTO DISABLE
IF %M%==2 GOTO ENABLE
IF %M%==3 GOTO BAI
:DISABLE
netsh advfirewall firewall add rule name="lolchatna" dir=out remoteip=216.133.234.21 protocol=TCP action=block
netsh advfirewall firewall add rule name="lolchateast" dir=out remoteip=66.150.148.21 protocol=TCP action=block
netsh advfirewall firewall add rule name="lolchatwest" dir=out remoteip=64.7.194.112 protocol=TCP action=block
netsh advfirewall firewall add rule name="lolchatlan" dir=out remoteip=66.151.33.248 protocol=TCP action=block
GOTO MAIN
:ENABLE
netsh advfirewall firewall delete rule name="lolchatna"
netsh advfirewall firewall delete rule name="lolchateast"
netsh advfirewall firewall delete rule name="lolchatwest"
netsh advfirewall firewall delete rule name="lolchatlan"
GOTO MAIN
:BAI
exit