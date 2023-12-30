#!/bin/sh

# /etc/X11/xinit/xinitrc
# global xinitrc file, used by all X sessions started by xinit (startx)

# Matchbox WM
matchbox-window-manager -use_titlebar no &

# Hide mouse cursor
unclutter -idle 0 &

# Start Chromium in kiosk mode
exec chromium http://myurl \
 --disable-gpu-driver-bug-workarounds \
 --no-sandbox \
 --kiosk \
 --noerrdialogs \
 --disable-infobars \
 --no-first-run \
 --start-fullscreen

