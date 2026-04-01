#!/bin/bash
current=$(xkb-switch)  # Prints "us" or layout name
if [ "$current" = "us" ]; then
    xkb-switch -n  # Next group (to CA)
else
    xkb-switch -n  # Next (back to US)
fi