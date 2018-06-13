#!/bin/bash

# Mount the installer image
hdiutil attach /Applications/Install\ OS\ X\ El\ Capitan.app/Contents/SharedSupport/InstallESD.dmg -noverify -nobrowse -mountpoint /Volumes/esd

# Create the ElCapitan Blank ISO Image of 7316mb with a Single Partition - Apple Partition Map
hdiutil create -o /tmp/ElCapitan.cdr -size 7316m -layout SPUD -fs HFS+J

# Mount the ElCapitan Blank ISO Image
hdiutil attach /tmp/ElCapitan.cdr.dmg -noverify -nobrowse -mountpoint /Volumes/iso

# Restore the Base System into the ElCapitan Blank ISO Image
asr restore -source /Volumes/esd/BaseSystem.dmg -target /Volumes/iso -noprompt -noverify -erase

# Remove Package link and replace with actual files
rm /Volumes/OS\ X\ Base\ System/System/Installation/Packages
cp -rp /Volumes/esd/Packages /Volumes/OS\ X\ Base\ System/System/Installation/

# Copy El Capitan installer dependencies
cp -rp /Volumes/esd/BaseSystem.chunklist /Volumes/OS\ X\ Base\ System/BaseSystem.chunklist
cp -rp /Volumes/esd/BaseSystem.dmg /Volumes/OS\ X\ Base\ System/BaseSystem.dmg

# Unmount the installer image
hdiutil detach /Volumes/esd

# Unmount the ElCapitan ISO Image
hdiutil detach /Volumes/OS\ X\ Base\ System/

# Convert the ElCapitan ISO Image to ISO/CD master (Optional)
hdiutil convert /tmp/ElCapitan.cdr.dmg -format UDTO -o /tmp/ElCapitan.iso
rm -f /tmp/ElCapitan.cdr.dmg

# Rename the ElCapitan ISO Image and move it to the desktop
mv /tmp/ElCapitan.iso.cdr ~/Desktop/ElCapitan.iso
