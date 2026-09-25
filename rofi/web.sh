#!/bin/bash

if [ -z "$ROFI_RETV" ]; then
    echo "Search the web..."
    exit
fi

if [ "$ROFI_RETV" = "1" ]; then
    firefox "https://duckduckgo.com/?q=$(printf '%s' "$1" | sed 's/ /+/g')"
fi