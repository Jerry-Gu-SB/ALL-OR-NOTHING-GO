@echo off
setlocal EnabledDelayedExpansion
title Scarlet Veil Developer Tool

:: --------------------------------
:: CONFIGURATION (assign default fallbacks here)
:: --------------------------------
set "DEFAULT_DUMMY=Nia"
set "DEFAULT_STAGE=stages/dark.def"
:: --------------------------------

:menu
cls
echo ------------------------------
echo Scarlet Veil Dev Tool
echo ------------------------------
echo 1. Nia
echo 2. Garrow
echo 3. Custom Character (Type Folder Name Manually)
echo 4. Exit
echo ------------------------------
echo.

set /p choice="Select a character (1-4): "

if "%choice%"=="1" set p1_char="Nia" & goto stage_select
if "%choice%"=="2" set p1_char="Garrow" & goto stage_select
if "%choice%"=="3" goto ch_custom
if "%choice%"=="4" goto exit
goto menu

:ch_custom
cls
echo ------------------------------
echo   Custom Character Selection
echo ------------------------------
set /p p1_char="Enter the folder name of your custom character: "

if not exist "chars/%p1_char%" (
    echo.
    echo [ERROR] Character folder 'chars/%p1_char%' does not exist.
    echo Please check your spelling and try again.
    echo.
    pause
    goto ch_custom
)

goto stage_select

:stage_select
echo ------------------------------
echo        Select a Stage
echo ------------------------------
echo 1. Dark Room (dark.def)
echo 2. Black Room (black.def)
echo 3. Purple Room (purple.def)
echo ------------------------------
echo.
set /p stage_choice="Select a stage (1-3 or Enter for default): "

if "%stage_choice%"=="1" set stage="stages/dark.def"
if "%stage_choice%"=="2" set stage="stages/black.def"
if "%stage_choice%"=="3" set stage="stages/purple.def"
if "%stage%"=="" set "stage=%DEFAULT_STAGE%"
goto control_select

:control_select
cls
echo ------------------------------
echo      Configure Controls
echo ------------------------------
echo 1. Player vs Dummy (Standard Training)
echo 2. Player vs CPU (Test Matchup AI) [WIP]
echo 3. CPU vs CPU (AI Battle) [WIP]
echo ------------------------------
echo.
set /p control_choice="Select a control mode (1-3 or Enter for default): "

if "%control_choice%"=="2" (
    set "p1_ai = 0"
    set "p2_ai = 1"
) else if "%control_choice%"=="3" (
    set "p1_ai = 1"
    set "p2_ai = 1"
) else (
    echo Default Option 1: Player vs Dummy
    set "p1_ai = 0"
    set "p2_ai = 0"
)
goto validate

:validate
:: ==========================================
::             SAFETY VALIDATION 
:: ==========================================
cls
echo Checking files before launching game...

:: Checking for engine executable
if not exist "Ikemen_GO.exe" (
    echo [ERROR] Ikemen_GO.exe not found. 
    echo Please ensure it is in the same directory as this script.
    pause & goto menu
)

:: Checking for player 1 character folder
if not exist "chars/%p1_char%" (
    echo [ERROR] Character folder "chars/%p1_char%" not found. 
    echo Please check the folder name and try again.
    pause & goto menu
)

:: Checking for player 2 dummy character folder
set "p2_dummy=%DEFAULT_DUMMY%"
if not exist "chars/%p2_dummy%" (
    echo [ERROR] Dummy character folder "chars/%p2_dummy%" not found. 
    echo Using %p1_char% as P2 instead.
    set "p2_dummy=%p1_char%"
)

:: Checking for stage file (grabs filename before comma if music attached)
for /f "tokens=1 delims=," %%A in ("%stage%") do set "stage_choice=%%A"

set "stage_choice=%stage_choice:"=%" & set "stage_choice=%stage_choice:/=\%"
echo DEBUG: Looking for file at: "%CD%\%stage_choice%"

if not exist "%stage_choice%" (
    echo [ERROR] Stage choice '%stage_choice%' is missing from your stages folder.
    echo Reverting to default: %DEFAULT_STAGE%
    set "stage=%DEFAULT_STAGE%"
    pause
)

:: Force safety defaults if AI variables are somehow left blank
if "%p1_ai%"=="" set "p1_ai=0"
if "%p2_ai%"=="" set "p2_ai=0"

:: Strip any accidental spaces or hidden quotes
set "p1_ai=%p1_ai: =%"
set "p2_ai=%p2_ai: =%"

:: ==========================================
::                 LAUNCHING
:: ==========================================
echo.
echo Launching Training Mode with %p1_char%...
echo P1 Character: %p1_char% (AI: %p1_ai%) 
echo P2 Character: %p2_dummy% (AI: %p2_ai%)
echo Stage: %stage%
echo.

Ikemen_GO.exe -p1 "%p1_char%" -p2 "%p2_dummy%" -s "%stage%" -p1.ai %p1_ai% -p2.ai %p2_ai% -gameMode training

if %errorlevel% neq 0 (
    echo.
    echo [ENGINE CRASH] Ikemen GO closed with an error code: %errorlevel%
    echo Check 'save/logs' for more details.
    pause
)

goto menu

:exit
exit
