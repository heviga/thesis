@echo off
echo Creating desktop shortcuts...

set "desktop=%USERPROFILE%\Desktop"
set "source=%CD%"

echo Creating "View Thesis PDF" shortcut...
powershell -Command "$WshShell = New-Object -comObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%desktop%\View Thesis PDF.lnk'); $Shortcut.TargetPath = '%source%\view_pdf.bat'; $Shortcut.WorkingDirectory = '%source%'; $Shortcut.Save()"

echo Creating "Compile Thesis" shortcut...
powershell -Command "$WshShell = New-Object -comObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%desktop%\Compile Thesis.lnk'); $Shortcut.TargetPath = '%source%\compile_thesis.bat'; $Shortcut.WorkingDirectory = '%source%'; $Shortcut.Save()"

echo.
echo Desktop shortcuts created successfully!
echo You can now double-click them from your desktop.
pause


