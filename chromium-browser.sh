#!/bin/sh

export DISPLAY=:1.0

/usr/bin/chromium-browser --no-default-browser-check --no-first-run --disable-gpu --no-sandbox --user-data-dir=/data "$@"