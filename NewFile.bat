@echo off
setlocal

set "dir=%~1"
set "fileExt="

set /p fileExt=Enter the file extension (without dot): 

if "%fileExt%"=="" (
    exit /b 1
)

set "newFile=%dir%\NewFile.%fileExt%"
echo. > "%newFile%"
 
