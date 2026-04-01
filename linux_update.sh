#!/bin/bash

echo "Starting BASH Script To Update System...."


echo "Updating Repositories..."
#Refesh Repository + Upgrade System
dnf upgrade --refresh -y

#Optional: Update Firmware If Available

echo "Updating Firmware..,"

fwupdngr refresh
fwupdmgr update -y

echo "Updating Flatpaks#..."

#Update Flatpaks
flatpak update -y

echo "Cleaning Up Old Packages..."

#Clean Up Old Packages
dnf autoremove -y

echo "Update Completed!"


