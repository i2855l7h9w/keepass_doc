#!/bin/bash

dbus-monitor --session "type='signal',interface='org.gnome.ScreenSaver'" | \
( while read X; do
    if echo $X | grep "boolean true" &> /dev/null; then
        mono /usr/lib/keepass2/KeePass.exe --lock-all;
    elif echo $X | grep "boolean false" &> /dev/null; then
        mono /usr/lib/keepass2/KeePass.exe --lock-all;
    fi
    done )
