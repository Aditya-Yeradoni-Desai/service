#!/bin/bash
echo "━━━━━━━━━━━ SYSTEM UPDATE ━━━━━━━━━━━"
ping -c 1 google.com > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "No internet connection"
    exit 1
fi
echo "Internet connection detected"
echo
echo "━━━━━━━━━━━ UPDATING PACKAGES ━━━━━━━━━━━"
sudo apt update
if [ $? -ne 0 ]; then
    echo "Update failed"
    exit 1
fi
echo
echo "━━━━━━━━━━━ UPGRADING SYSTEM ━━━━━━━━━━━"
sudo apt full-upgrade -y
if [ $? -ne 0 ]; then
    echo "Upgrade failed"
    exit 1
fi
echo
echo "━━━━━━━━━━━ REMOVING UNUSED PACKAGES ━━━━━━━━━━━"
sudo apt autoremove -y
if [ $? -ne 0 ]; then
    echo "[✘] Autoremove failed"
    exit 1
fi
clear
echo "━━━━━━━━━━━ COMPLETE ━━━━━━━━━━━"
echo "System successfully updated"
