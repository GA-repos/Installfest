@echo OFF
xcopy /Y ubuntu_startup.bat "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
call "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\ubuntu_startup.bat"