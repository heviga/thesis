@echo off
echo Opening thesis PDF in Acrobat Reader...

REM Try different possible Acrobat Reader locations
if exist "C:\Program Files\Adobe\Acrobat DC\Acrobat\Acrobat.exe" (
    start "" "C:\Program Files\Adobe\Acrobat DC\Acrobat\Acrobat.exe" main.pdf
    echo PDF opened in Acrobat DC
    goto :end
)
if exist "C:\Program Files\Adobe\Acrobat Reader DC\Reader\AcroRd32.exe" (
    start "" "C:\Program Files\Adobe\Acrobat Reader DC\Reader\AcroRd32.exe" main.pdf
    echo PDF opened in Acrobat Reader DC
    goto :end
)
if exist "C:\Program Files (x86)\Adobe\Acrobat Reader DC\Reader\AcroRd32.exe" (
    start "" "C:\Program Files (x86)\Adobe\Acrobat Reader DC\Reader\AcroRd32.exe" main.pdf
    echo PDF opened in Acrobat Reader DC (x86)
    goto :end
)

echo Acrobat Reader not found, opening with default PDF viewer...
start main.pdf
echo PDF opened in default viewer

:end
pause
