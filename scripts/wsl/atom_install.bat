@echo OFF

REM check if atom is installed
where atom 1>nul 2>nul
if not %errorlevel% == 0 (

    REM check if chocolatey is installed
    choco 1>nul 2>nul
    if not %errorlevel% == 0 (

        REM install chocolatey
        @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
    )

    REM install atom
    choco install -f -y atom
    echo.
    set /p DUMMY="Press Enter to Exit, wait for Atom to show up on your Desktop/Start Menu (this could take a while) and run the script again."
    exit /B
) 

REM check if apm is installed
where apm 1>nul 2>nul
if %errorlevel% == 0 (

    REM install apm packages
    apm install aligner aligner-scss aligner-css aligner-javascript aligner-ruby atom-beautify
    apm install editorconfig linter-ui-default busy-signal esformatter fixmyjs git-diff-details git-history
    apm install git-plus language-markdown less-than-slash linter linter-stylelint linter-eslint
    apm install linter-markdown linter-rubocop linter-tidy
    apm install markdown-writer sort-lines language-ember-htmlbars intentions linter-sass-lint
    apm install standardjs-snippets ruby-block open-in-browser 

    REM open atom
    atom .
    echo.
    set /p DUMMY="Please wait for Atom to open, and then close it with CTRL+Q and press Enter to continue"

    REM disable snippets
    apm disable autocomplete-snippets

    REM turn on autosave (manual check in package settings still part of installfest)
    apm enable autosave 2> nul > nul
) else (
    
    REM apm not found
    echo. & echo apm - command not found. If issues, ask for assistance. & echo.
)

REM delete self
del "%~f0"


