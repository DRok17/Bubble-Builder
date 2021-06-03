:MENU
@ECHO OFF
mode 32,14
ECHO          BUBBLE-BUILDER
ECHO.
ECHO ................................
ECHO.
ECHO    * Bubble Conversion Tools *
ECHO.
ECHO      1 - Input Folder
ECHO      2 - Image Converter
ECHO      3 - Title/ID VPK
ECHO      4 - Create VPK
ECHO      5 - Main Folder
ECHO      6 - Wipe Input/Contents
ECHO.
SET /P M=Type # or 0 for EXIT :
IF %M%==0 GOTO EOF
IF %M%==1 GOTO INPF
IF %M%==2 GOTO PNG
IF %M%==3 GOTO TID
IF %M%==4 GOTO PACKVPK
IF %M%==5 GOTO CONT
IF %M%==6 GOTO WIPE

:TID
cd .
start TITLEID-OUT.bat
GOTO MENU

:INPF
cd .
start OpenInputFolderOUT.bat
GOTO MENU

:PNG
cd .
start PNGConvertOUT.bat
GOTO MENU

:PACKVPK
cd .
start z-5RePackVPK-OUT.bat
GOTO MENU

:CONT
cd .
start OpenCONTFolderOUT.bat
GOTO MENU

:WIPE
cd .
start zzz-Wipe.bat
GOTO MENU

:EOF
exit
