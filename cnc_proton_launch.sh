#!/bin/bash
export STEAM_COMPAT_DATA_PATH=~/.steam/steam/steamapps/compatdata
Xephyr :1 &
PROC0=$!
DISPLAY=:1 $HOME/.steam/steam/steamapps/common/Proton\ 3.7\ Beta/proton run $WINEPREFIX/drive_c/Westwood/C\&C95/C\&C95.exe
PROC1=$!
kill $PROC0
kill $PROC1
