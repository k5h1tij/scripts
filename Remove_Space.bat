cls
@echo off
ECHO.This will Make all spaces " " between the filenames to be replaced by "_"
ECHO.Usage: Copy this script in the folder where the spaces of the files are to be written
pause
setlocal enabledelayedexpansion
for %%j in (*.*) do (
set filename=%%~nj
set filename=!filename:.=_!
set filename=!filename: =_!
if not "!filename!"=="%%~nj" ren "%%j" "!filename!%%~xj"
)