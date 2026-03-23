@echo off
REM SyncTeX helper for Cursor - opens source file at specific line
REM This is called by synctex when you click in PDF
REM Usage: synctex_cursor.bat <file> <line>

set "FILEPATH=%~1"
set "LINENUM=%~2"

REM Cursor path (found automatically)
set "CURSOR_PATH=C:\Users\ivadu\AppData\Local\Programs\cursor\Cursor.exe"

REM Open file in Cursor at the specified line
if exist "%CURSOR_PATH%" (
    start "" "%CURSOR_PATH%" --goto "%FILEPATH%:%LINENUM%"
) else (
    echo Cursor not found at: %CURSOR_PATH%
    echo Please update the path in synctex_cursor.bat
    pause
)






