@echo OFF
where atom 2> nul > nul
if not %errorlevel% == 0 (
    @echo OFF
    where choco 2> nul > nul
    if not %errorlevel% == 0 (
        if not %errorlevel% == 1 (
            @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
        )
    )
    choco install -f -y atom
    echo.
    set /p DUMMY="Press Enter to Exit, wait for Atom to show up on your Desktop/Start Menu and run this script again as Administrator."
    exit
)


@echo OFF
where apm 2> nul > nul
if %errorlevel% == 0 (
    apm install aligner aligner-scss aligner-css aligner-javascript aligner-ruby atom-beautify
    apm install editorconfig linter-ui-default busy-signal esformatter fixmyjs git-diff-details git-history
    apm install git-plus language-markdown less-than-slash linter linter-stylelint linter-eslint
    apm install linter-markdown linter-rubocop linter-tidy
    apm install markdown-writer sort-lines language-ember-htmlbars intentions linter-sass-lint
    apm install standardjs-snippets ruby-block open-in-browser 
    atom .
    echo.
    set /p DUMMY="Please wait for Atom to open, and then close it with CTRL+Q and press Enter to continue"

    apm disable autocomplete-snippets
    REM turn on autosave (manual check in package settings still part of installfest)
    apm enable autosave 2> nul > nul
) else (
    echo. & echo apm - command not found. Open Atom and select atom option at top, then 'Install Shell Commands'. Rerun script. If issues, ask for assistance. & echo.
)
