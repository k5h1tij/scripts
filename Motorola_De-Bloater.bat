title Motorola De-bloater script by gyarados025
cls
@ECHO OFF

ECHO. *********************************************************************

ECHO. ****** This will De-boat Motorola stock rom for Non-Rooted Device *****
ECHO. **    Make Sure USBDebugging is on and Authorised to this PC     ******
ECHO. **         Make Sure this script is in adb folder *********************
ECHO. ***********************************************************************
ECHO. ******               Supported On Android 7.1+              ***********
echo.
Pause
ECHO.
ECHO.                        */Starting ADB-Bridge\*
ECHO.       *Your device Serial no should appear with Status device/Online!*
ECHO.
adb devices
ECHO.
ECHO.              !IF no Device Is detected or status is Offline Or Unauthorised !!
ECHO.      !! Grant The Debugging Permission from the Phone now and Run this Script Again !!
ECHO.                !!Press Any Key to Continue if device is detected correctly!!
ECHO.
ECHO.                  *NOTE: Success - App   is  Unistalled
ECHO.                  *NOTE: Failed  - App is Not-Installed
ECHO.
ECHO.     *NOTE: If running the first time Grant the authorisaton from Phone Now!
ECHO.
ECHO.               If no device is detected then close and try again
ECHO.
pause
cls
ECHO.
ECHO.*Remove Motorola System Specific Apps :
ECHO.NOTE:These apps can only be restored during device Reset!
ECHO.
pause
ECHO.
ECHO.Device Management
adb -d shell pm uninstall -k --user 0 com.motorola.ccc.devicemanagement
ECHO.File Browser
adb -d shell pm uninstall -k --user 0 com.lenovo.FileBrowser2
ECHO.JVTCMD
adb -d shell pm uninstall -k --user 0 com.motorola.android.jvtcmd
ECHO.Moto Care
adb -d shell pm uninstall -k --user 0 com.motorola.motocare
ECHO.Moto Care Int
adb -d shell pm uninstall -k --user 0 com.motorola.motocare.internal
ECHO.OOBE (Device Setup)
adb -d shell pm uninstall -k --user 0 com.aura.oobe.ml
ECHO.Motorola Checkin
adb -d shell pm uninstall -k --user 0 com.motorola.ccc.checkin
ECHO.Motorola Notifications
adb -d shell pm uninstall -k --user 0 com.motorola.ccc.notification
ECHO.Motorola Notifications (Android 8.1+)
adb -d shell pm uninstall -k --user 0 com.motorola.ccc.notifications
ECHO.Motorola Service Main
adb -d shell pm uninstall -k --user 0 com.motorola.ccc.mainplm
ECHO.Motorola SLPC System
adb -d shell pm uninstall -k --user 0 com.motorola.slpc_sys
ECHO.NativeDropboxagent
adb -d shell pm uninstall -k --user 0 com.motorola.android.nativedropboxagent
ECHO.Rescue Security
adb -d shell pm uninstall -k --user 0 com.lmi.motorola.rescuesecurity
ECHO.
pause
cls
ECHO.
ECHO.*Remove Google Specific Apps :
ECHO.NOTE:Google (App), Google Chrome, Youtube & Photos will also be Uninstalled
ECHO.NOTE:You can install them again from Play Store 
ECHO.
pause
ECHO.
ECHO.Google Duo
adb -d shell pm uninstall -k --user 0 com.google.android.apps.tachyon
ECHO.Google (Assistant)
adb -d shell pm uninstall -k --user 0 com.google.android.googlequicksearchbox
ECHO.Google Hindi input
adb -d shell pm uninstall -k --user 0 com.google.android.apps.inputmethod.hindi
ECHO.Google Japanese input
adb -d shell pm uninstall -k --user 0 com.google.android.inputmethod.japanese
ECHO.Google Korean input
adb -d shell pm uninstall -k --user 0 com.google.android.inputmethod.korean
ECHO.Google Pinyin input
adb -d shell pm uninstall -k --user 0 com.google.android.inputmethod.pinyin
ECHO.Google Play Videos
adb -d shell pm uninstall -k --user 0 com.google.android.videos
ECHO.Google Play Music
adb -d shell pm uninstall -k --user 0 com.google.android.music
ECHO.Google Play Books
adb -d shell pm uninstall -k --user 0 com.google.android.apps.books
ECHO.Google Zhuyin input
adb -d shell pm uninstall -k --user 0 com.google.android.apps.inputmethod.zhuyin
ECHO.Google Sheets
adb -d shell pm uninstall -k --user 0 com.google.android.apps.docs.editors.sheets
ECHO.Google Slides
adb -d shell pm uninstall -k --user 0 com.google.android.apps.docs.editors.slides
ECHO.Google Talkback
adb -d shell pm uninstall -k --user 0 com.google.android.marvin.talkback
ECHO.Google Translate
adb -d shell pm uninstall -k --user 0 com.google.android.apps.translate
ECHO.Google Chrome
adb -d shell pm uninstall -k --user 0 com.android.chrome
ECHO.Youtube
adb -d shell pm uninstall -k --user 0 com.google.android.youtube
ECHO.Google Photos
adb -d shell pm uninstall -k --user 0 com.google.android.apps.photos

ECHO.
pause
cls
ECHO.
ECHO.*Remove Motorola UI Specific Apps
ECHO.
pause
ECHO.
ECHO.Moto Device Help
adb -d shell pm uninstall -k --user 0 com.motorola.genie
ECHO.Moto Key 
adb -d shell pm uninstall -k --user 0 com.motorola.motokey
ECHO.Moto Suggestions (Android 8.1+)
adb -d shell pm uninstall -k --user 0 com.motorola.mya
ECHO.Moto Voice
adb -d shell pm uninstall -k --user 0 com.motorola.audiomonitor
ECHO.
pause
cls
ECHO.
ECHO.*Remove Motorola Mods Specific Apps
ECHO.
pause
ECHO.
ECHO.Moto Camera Mod
adb -d shell pm uninstall -k --user 0 com.motorola.cameramod
ECHO.Moto Mod Service
adb -d shell pm uninstall -k --user 0 com.motorola.modservice
ECHO.Moto Projector Mod
adb -d shell pm uninstall -k --user 0 com.motorola.projectormod
ECHO.Moto Z market
adb -d shell pm uninstall -k --user 0 com.motorola.modstore
ECHO.Moto Modservice wrapper
adb -d shell pm uninstall -k --user 0 com.motorola.modservice.fmwkwrapper
ECHO.Moto Suggestions wrapper
adb -d shell pm uninstall -k --user 0 com.motorola.mya.fmwkwrapper
ECHO.
ECHO.
ECHO.                         *\Killing ADB-Bridge/*
adb kill-server
ECHO.
ECHO.Done.Your Moto is De-Bloated now!To remove back apps Make a Factory Reset
ECHO.Exit Now or else continue for advance options..
ECHO.
pause
cls
ECHO.
ECHO.
ECHO.                         */Starting ADB-Bridge\*
ECHO.
adb devices
ECHO.
ECHO.*Remove Motorola Feature Specific Apps
ECHO.*Caution! This removes Moto , Moto Display and Moto Actions!
ECHO.*If you dont want them to be removed then close this script now!!
Pause
ECHO.
ECHO.Moto (App)
adb -d shell pm uninstall -k --user 0 com.motorola.moto
ECHO.Moto Actions 
adb -d shell pm uninstall -k --user 0 com.motorola.actions
ECHO.Moto Display
adb -d shell pm uninstall -k --user 0 com.motorola.motodisplay
ECHO.Moto Display System Process
adb -d shell pm uninstall -k --user 0 com.motorola.motodisplay.env

ECHO.                         *\Killing ADB-Bridge/*
adb kill-server
ECHO.                        All Done! Press Any Key To Exit
pause
EXIT
