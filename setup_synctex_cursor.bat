@echo off
echo Setting up SyncTeX for Cursor...
echo.

REM Check if synctex is available
where synctex >nul 2>&1
if errorlevel 1 (
    echo ERROR: synctex command not found.
    echo Make sure you have a LaTeX distribution installed (MiKTeX, TeX Live, etc.)
    pause
    exit /b 1
)

echo SyncTeX is available.
echo.
echo IMPORTANT: Adobe Reader has limited SyncTeX forward search support.
echo.
echo For the best experience, you have two options:
echo.
echo Option 1: Install LaTeX Workshop extension in Cursor
echo   - Open Cursor
echo   - Go to Extensions (Ctrl+Shift+X)
echo   - Search for "LaTeX Workshop"
echo   - Install it
echo   - The extension will handle SyncTeX automatically
echo.
echo Option 2: Use SumatraPDF (recommended for external PDF viewer)
echo   - Download from: https://www.sumatrapdfreader.org/
echo   - After installation, recompile your thesis
echo   - Double-clicking in PDF will work automatically
echo.
echo Current setup:
echo   - SyncTeX is enabled in compilation
echo   - PDF contains sync information
echo   - Helper script created: synctex_helper.bat
echo.
pause







