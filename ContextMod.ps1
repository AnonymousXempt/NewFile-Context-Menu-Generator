param([switch]$Elevated)

function Test-Admin {
    $currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
    $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}

if ((Test-Admin) -eq $false)  {
    if ($elevated) {
    } else {
        Start-Process powershell.exe -Verb RunAs -ArgumentList ('-ExecutionPolicy Bypass -noprofile -file "{0}" -elevated' -f ($myinvocation.MyCommand.Definition))
    }
    exit
}

'Running With Admin Privleges'

$batContent = @"
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
"@

reg add "HKCR\Directory\Background\shell\NewFile" /ve /t REG_SZ /d "New File" /f
reg add "HKCR\Directory\Background\shell\NewFile" /v "Icon" /t REG_SZ /d "notepad.exe" /f
reg add "HKCR\Directory\Background\shell\NewFile\command" /ve /t REG_SZ /d '"\"C:\\NewFile.bat\" \"%V\""' /f


$batFilePath = "C:\NewFile.bat"
Set-Content -Path $batFilePath -Value $batContent -Force
clear
start-sleep

