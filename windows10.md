# Installfest - Windows 10 Setup

This class requires a Linux/Unix console. However, Windows 10 does have a Linux/Unix console out of the box. There are two options to get your Windows 10 Machine set up for this class:

- Turn on **Windows Subsystem for Linux (WSL)**- run a nearly complete Linux/Unix console that runs seamleslly within Windows 10 (*instructions below*)
- Dual boot **Ubuntu Linux**- set up your machine to dual boot Ubuntu Linux and Windows 10

## Instructions for turning on WSL

### Check that you have Windows 10 version 1607 or above

1. Press **Windows Key + R** together to open the **Run** window.
2. Type in `winver` and press **Enter**.
3. If the version number in the **About Windows** popup is less than **1607**, you must update Windows 10 before continuing. Ask an instructor for help with this if needed.

### Download the WSL install script

4. [Download Chrome Browser](https://www.google.com/chrome/) if you do not already have it and install it.
5. Open **Chrome**.
6. Navigate to `chrome://settings/`.
7. Scroll down to the **Advanced** button at the bottom of the Settings window and click it.
8. Find **Protect you and your device from dangerous sites** and turn it **OFF**.
9. Download the script [here](https://git.generalassemb.ly/ArjunRayGA/installfest/raw/wsl-compatible/download/ubuntu_install.zip).
10. Navigate to `chrome://settings/`.
11. Scroll down to the **Advanced** button at the bottom of the Settings window and click it.
12. Find **Protect you and your device from dangerous sites** and turn it back **ON**.

### Turn on WSL

13. Unzip the downloaded file by clicking right-clicking on it and selecting **Extract all...**.
14. Go into the extracted `ubuntu_install` folder and double click on the file `ubuntu_install` within it. It will have a little gear icon on it indicating that it is a Windows `cmd` script.
15. If a **Windows protected your PC** window opens up, click the **More info** link and click the **Run anyway** button.
16. After the first install step, you will be asked if you want to restart. Type `Y` and press **Enter** to restart.

### Install Ubuntu for Windows

17. Navigate back to the `ubuntu_install` folder and run the `ubuntu_install` script again (same as steps 14-15). You may be prompted to confirm that you want to install Ubuntu Linux. Type `Y` and press **Enter** to proceed with install.
18. Once the install finished, you will be asked to enter an new username. Enter a username of your choice and press **Enter**.
19. You will be prompted to enter and then re-enter a new password. Pick any password you like, type it in and press **Enter** both time. One important thing to note is that on Linux, password entry does not show any characters on the screen ie `***` won't show up when you type in passwords, but they are in fact being recorded so type them in anyway!

### Confirm Ubuntu installed properly

20. Run the `ubuntu_install` script again (same as steps 14-15) and you will see:
    ```sh
    Installation complete! Open Bash on Ubuntu for Windows from your Start Menu. If you have trouble finding/running it, ask an Instructor for help. Press Enter to close
    ```
    You are done! Press **Enter** to exit and the script will automatically delete itself. If you did not see this message, ask an Instructor for help.

> Whenever you are asked to use a terminal / console, use **Bash on Ubuntu for Windows** from now on.
