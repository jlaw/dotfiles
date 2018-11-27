#!/bin/bash

version="Install OS X El Capitan"
version="Install macOS High Sierra"

# Mount the installer image
hdiutil attach "/Applications/${version}.app/Contents/SharedSupport/InstallESD.dmg" -noverify -nobrowse -mountpoint /Volumes/esd

# Create the Blank ISO Image of 7316mb with a Single Partition - Apple Partition Map
hdiutil create -o "/tmp/${version}.cdr" -size 7316m -layout SPUD -fs HFS+J

# Mount the Blank ISO Image
hdiutil attach "/tmp/${version}.cdr.dmg" -noverify -nobrowse -mountpoint /Volumes/iso

# Restore the Base System into the Blank ISO Image
asr restore -source /Volumes/esd/BaseSystem.dmg -target /Volumes/iso -noprompt -noverify -erase

# Remove Package link and replace with actual files
rm /Volumes/OS\ X\ Base\ System/System/Installation/Packages
cp -rp /Volumes/esd/Packages /Volumes/OS\ X\ Base\ System/System/Installation/

# Copy installer dependencies
cp -rp /Volumes/esd/BaseSystem.chunklist /Volumes/OS\ X\ Base\ System/BaseSystem.chunklist
cp -rp /Volumes/esd/BaseSystem.dmg /Volumes/OS\ X\ Base\ System/BaseSystem.dmg

# Unmount the installer image
hdiutil detach /Volumes/esd

# Unmount the ISO Image
hdiutil detach /Volumes/OS\ X\ Base\ System/

# Convert the ISO Image to ISO/CD master (Optional)
hdiutil convert "/tmp/${version}.cdr.dmg" -format UDTO -o "/tmp/${version}.iso"
rm -f "/tmp/${version}.cdr.dmg"

# Rename the ISO Image and move it to the desktop
mv "/tmp/${version}.iso.cdr" "~/Desktop/${version}.iso"
