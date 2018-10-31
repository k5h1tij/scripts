title SDCard Backup script by gyarados025	
cls
@ECHO OFF
ECHO.
ECHO.**** This script will copy the whole internal storage of the android device ****
ECHO.****    The Contents will be in the folder named 0 in this same directory   ****
ECHO.****       This uses the USBDebugging , make sure you have enabled them     ****
ECHO.
pause
ECHO.
ECHO.
ECHO.                               \*Starting ADB Server*/
ECHO.
ECHO.
adb pull storage/emulated/0 
ECHO.
ECHO.                                   Copy is Complete
ECHO. 
ECHO.                                /*Killing ADB Server*\
adb kill-server
ECHO.
ECHO.                                Press any Key to EXIT
ECHO.
pause 
EXIT