@echo off
:welcome
cls
echo Welcome to TaskKiller
echo.
echo Type in a process name to kill (example: chrome.exe) and hit ENTER
set /p process=Kill:
if %process% == colorhax goto egg1
goto kill
:kill
cls
echo Killing process
taskkill /f /im %process%
echo Process was killed. If an error message has appeared, you may have misspelled the name of the program.
echo Press any key to return to the menu.
pause >nul
goto welcome
:egg1
cls
echo You've found easter egg 1!
echo Type in a color code. (Any 2 digit number/letter combination with a-f)
echo To go back to menu, type "back".
set /p colorcode=Code:
if %colorcode% == back goto welcome
goto setcolor
:setcolor
color %colorcode%
goto egg1
