title Greenify Permissions script by gyarados025
cls
@ECHO OFF

ECHO. *********************************************************************

ECHO. ** This will clear Phone History and Messages from the device *****
ECHO. ** Make Sure USBDebugging is on and Authorised to this PC ***********
ECHO. **       Make Sure this script is in adb folder *********************
ECHO. *********************************************************************
ECHO. ******              !PRESS ANY KEY WHEN READY!              *********
echo.
Pause
ECHO.
ECHO.                        */Starting ADB-Bridge\*
ECHO.       *Your device Serial no should appear with Status device/Online!*
ECHO.
adb devices
ECHO.
ECHO.
pause
ECHO.

adb -d shell pm clear com.android.providers.contacts
ECHO.
adb -d shell pm clear com.android.providers.telephony
ECHO.
adb -d shell pm clear com.android.dialer
ECHO.
adb -d shell pm clear com.google.android.dialer
ECHO.
adb -d shell pm clear com.google.android.apps.messaging
ECHO.
ECHO.                             *\Killing ADB-Bridge/*
adb kill-server
ECHO.                        All Done! Press Any Key To Exit
pause
EXIT
