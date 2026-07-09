@echo off
setlocal

REM Path to your dist directory (absolute path required)
set "DIST_DIR=C:\Users\Public\DesktopApps"

REM Check if directory exists
if not exist "%DIST_DIR%\" (
    echo Error: Directory %DIST_DIR% does not exist.
    exit /b 1
)

REM Move to the dist directory
cd /d "%DIST_DIR%" || (
    echo Error: Failed to change directory to %DIST_DIR%.
    exit /b 1
)

REM Name of your executable inside dist
set "EXECUTABLE=aws_cli_login_secretserver.exe"

REM Check if executable exists
if not exist "%DIST_DIR%\%EXECUTABLE%" (
    echo Error: Executable %EXECUTABLE% not found in %DIST_DIR%
    exit /b 1
)

REM Run the executable with all passed arguments
"%DIST_DIR%\%EXECUTABLE%" %*
