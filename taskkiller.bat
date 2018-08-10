:: (C) Twizzlestorm 2018
@echo off
:welcome
cls
echo Welcome to TaskKiller
echo Created by Twizzlestorm
echo.
echo Type in a process name to kill (example: chrome.exe) and hit ENTER
echo Alternatively, type "tasklist" to show a list of tasks in case you are not sure what the name of the program is
set /p process=Kill: 
echo.
if %process% == colorhax goto egg1
if %process% == tasklist goto list
goto kill
:kill
cls
echo Killing process
taskkill /f /im %process%
echo Process was killed. If an error message has appeared, you may have misspelled the name of the program.
echo Press any key to return to the menu.
pause >nul
goto welcome
:list
cls
tasklist
echo Return to the home screen by hitting any key.
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
