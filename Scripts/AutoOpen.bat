:loop

echo Justin@2003 | "C:/Program Files/AnyDesk/anydesk.exe" 1338920620
timeout /t 10


if %errorlevel% neq 0 (
    echo Connection lost. Powering on remote device...
    "C:/Program Files/AnyDesk/anydesk.exe" %anydesk_id% --remote-restart
    timeout /t 10
    echo Remote device powered on. Reconnecting...
    goto loop
) else (
    echo Connected. Waiting for 10 seconds...
    timeout /t 10
    goto loop
)