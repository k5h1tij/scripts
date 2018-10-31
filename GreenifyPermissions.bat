title Greenify Permissions script by gyarados025
cls
@ECHO OFF

ECHO. *********************************************************************

ECHO. ** This will Grant Premissions For Greenify for Non-Root Device *****
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
ECHO.    !IF no Device Is detected or status is Offline Exit and Try Again!
ECHO.       !!Press Any Key to Continue if device is detected correctly!!
ECHO.
ECHO.          *NOTE:   ALL THE PERMISSIONS SHOULD NOT RETURN ERROR!
ECHO.
ECHO.          *NOTE: If running the first time Grant the authorisaton
ECHO.        from the Phone Pop-up window and run this again after closing! 
ECHO.
pause
ECHO.
ECHO.*Permission:- Accessibility service run-on-demand :OK
adb -d shell pm grant com.oasisfeng.greenify android.permission.WRITE_SECURE_SETTINGS
ECHO.
ECHO.*Permission:- Aggressive Doze on Android 7.0+ (non-root) :OK
adb -d shell pm grant com.oasisfeng.greenify android.permission.WRITE_SECURE_SETTINGS
ECHO.
ECHO.*Permission:- Doze on the Go  :OK
adb -d shell pm grant com.oasisfeng.greenify android.permission.DUMP
ECHO.
ECHO.*Permission:- Wake-up Tracker :OK
adb -d shell pm grant com.oasisfeng.greenify android.permission.READ_LOGS
ECHO.
ECHO.*Permission:- Background-free enforcement on Android 8+ (non-root) :OK
adb -d shell pm grant com.oasisfeng.greenify android.permission.GET_APP_OPS_STATS
ECHO.
break
ECHO.                        Greenify Will Now Force Quit To Take Effect   
ECHO.
adb -d shell am force-stop com.oasisfeng.greenify
ECHO.
ECHO.  Aggresive Doze , Wake-up Tracking and Cut-Off shall now be enabled in settings
ECHO.
ECHO.                             *\Killing ADB-Bridge/*
adb kill-server
ECHO.                        All Done! Press Any Key To Exit
pause
EXIT
