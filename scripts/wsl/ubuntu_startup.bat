@echo OFF

REM check if bash is installed
bash --version 1>nul 2>nul
if not %errorlevel% == 0 (
    
    REM check if lxrun is installed
    lxrun 1>nul 2>nul
    if %errorlevel% == 9009 (

        REM turn on wsl
        powershell -command Start-Process powershell -Verb runAs -Argument 'Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux'
    ) else (

        REM install Ubuntu bash using lxrun
        powershell -command Start-Process powershell -Verb runAs -Argument 'lxrun /install'
    )
) else (

    REM delete self
    del "%~f0"
)