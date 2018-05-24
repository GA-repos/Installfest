@echo OFF
bash --version 2> nul > nul
if not %errorlevel% == 0 (
    @echo OFF
    lxrun 2> nul > nul
    if not %errorlevel% == 0 (
        powershell -command Start-Process powershell -Verb runAs -Argument 'Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux'
    ) else (
        powershell -command Start-Process powershell -Verb runAs -Argument 'lxrun /install'
    )
) else (
   del "%~f0"
)