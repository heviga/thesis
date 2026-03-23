@echo off
REM SyncTeX helper script for Cursor
REM This script uses synctex to find the source location and opens it in Cursor
REM Usage: synctex_helper.bat <pdf_file> <page> <x> <y>

set "PDF_FILE=%~1"
set "PAGE=%~2"
set "X=%~3"
set "Y=%~4"

REM Get the directory of the PDF
set "PDF_DIR=%~dp1"
cd /d "%PDF_DIR%"

REM Use synctex to get the source location
REM synctex edit -o <page>:<x>:<y>:<pdf_file> -x <editor_command>
REM For Cursor, we need to find the file and line number first

REM Find Cursor executable
set "CURSOR_PATH="
if exist "%LOCALAPPDATA%\Programs\cursor\Cursor.exe" (
    set "CURSOR_PATH=%LOCALAPPDATA%\Programs\cursor\Cursor.exe"
) else if exist "%APPDATA%\Cursor\Cursor.exe" (
    set "CURSOR_PATH=%APPDATA%\Cursor\Cursor.exe"
) else if exist "C:\Program Files\Cursor\Cursor.exe" (
    set "CURSOR_PATH=C:\Program Files\Cursor\Cursor.exe"
) else (
    REM Try to find it via where command or common locations
    for /f "delims=" %%i in ('where /r "%LOCALAPPDATA%" Cursor.exe 2^>nul') do (
        set "CURSOR_PATH=%%i"
        goto :found
    )
    echo Cursor not found. Please update synctex_helper.bat with the correct path.
    echo Expected locations:
    echo   %LOCALAPPDATA%\Programs\cursor\Cursor.exe
    echo   %APPDATA%\Cursor\Cursor.exe
    pause
    exit /b 1
)
:found

REM Use synctex edit command to get source location and open in Cursor
REM The synctex edit command will output the file and line, then we parse it
for /f "tokens=*" %%a in ('synctex edit -o %PAGE%:%X%:%Y%:"%~1" 2^>nul ^| findstr /r "Input:"') do (
    REM Parse the output to get file and line
    set "SYNCTEX_OUTPUT=%%a"
)

REM Alternative: Use synctex with direct editor command
REM Format: synctex edit -o <page>:<x>:<y>:<pdf> -x "<editor> <file>:<line>"
synctex edit -o %PAGE%:%X%:%Y%:"%~1" -x "\"%CURSOR_PATH%\" \"%%{input}:%%{line}\"" 2>nul

REM If synctex command doesn't work, try manual parsing
if errorlevel 1 (
    echo SyncTeX lookup failed. Make sure the PDF was compiled with -synctex=1
    echo PDF: %~1
    echo Page: %PAGE%, Position: %X%,%Y%
)

