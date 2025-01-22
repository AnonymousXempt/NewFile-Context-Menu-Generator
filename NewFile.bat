@echo off
setlocal

set "dir=%~1"
set "fileExt="

set /p fileExt=Enter the file name + extension (example: index.html): 

if "%fileExt%"=="" (
    exit /b 1
)

set "newFile=%dir%\%fileExt%"
echo. > "%newFile%"
 
