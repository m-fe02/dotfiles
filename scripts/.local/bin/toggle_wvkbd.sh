#!/bin/bash

WVKBD_PROCESS="wvkbd-mobintl" # Use the specific binary name if it's 'wvkbd-mobintl'

if pgrep -x "$WVKBD_PROCESS" > /dev/null; then
    # wvkbd-mobintl is running, send SIGUSR2 to toggle visibility
    pkill -SIGRTMIN "$WVKBD_PROCESS"
else
    # wvkbd-mobintl is not running, launch it hidden
    # You can add any other desired options here, e.g., --fn "DejaVu Sans 20"
    "$WVKBD_PROCESS" --hidden & disown
fi
