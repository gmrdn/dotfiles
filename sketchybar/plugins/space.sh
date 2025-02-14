#!/bin/sh

# Update icon based on selection state
if [ "$SELECTED" = "true" ]; then
    sketchybar --set "$NAME" icon="" icon.color=0xff7daea3
else
    sketchybar --set "$NAME" icon="" icon.color=0xffffffff
fi
