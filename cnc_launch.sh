#!/bin/bash
Xephyr :1 &
PROC0=$!
DISPLAY=:1 wine $WINEPREFIX/drive_c/Westwood/C\&C95/C\&C95.exe
PROC1=$!
kill $PROC0
kill $PROC1
