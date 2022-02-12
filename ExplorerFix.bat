@echo off
goto check_Permissions

:check_Permissions
    echo Administrative permissions required. Detecting permissions...

    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Success: Administrative permissions confirmed.
	taskkill /f /im explorer.exe
	timeout 3
	explorer.exe
	timeout 3
	pause
    ) else (
        echo Failure: Current permissions inadequate.
	pause
    )

    pause >nul