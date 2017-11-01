#!/bin/sh

export DISPLAY=:1.0
mkdir -p /var/run/dbus
chown messagebus:messagebus /var/run/dbus
exec dbus-uuidgen --ensure &
sleep 3
dbus-daemon --system --fork
Xvfb :1 -screen 0 "1280x720x24" >/dev/null 2>&1 &
fluxbox >/dev/null 2>&1 &
