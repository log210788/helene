@echo off
echo ========================================================
echo   Uploading Helene's Lesson 01 English Studio to GitHub
echo ========================================================
set PATH=%PATH%;C:\Program Files\Git\cmd
cd /d "%~dp0"

git status
git add .
git commit -m "Update Helene Lesson 01 interactive English studio" 2>nul
git push -u origin main

echo.
if %ERRORLEVEL% equ 0 (
    echo [SUCCESS] Repository pushed to https://github.com/log210788/helene
    echo Live GitHub Pages will be at: https://log210788.github.io/helene/
) else (
    echo [NOTE] If prompted by GitHub, please complete the sign-in in your browser.
)
pause
