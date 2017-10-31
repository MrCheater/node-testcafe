#!/bin/sh

export DISPLAY=:1.0
dbus-daemon --session --fork
Xvfb :1 -screen 0 "1280x720x24" >/dev/null 2>&1 &
fluxbox >/dev/null 2>&1

eval "$@"