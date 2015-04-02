#!/bin/sh

if [[ -f /Applications/Wireless\ Network\ Utility.app/ProfilesList-${1}.plist ]]; then
    killall -9 "Wireless Network Utility" # Kill our crappy wireless network utility app
    rm /Applications/Wireless\ Network\ Utility.app/ProfilesList.plist # Delete our current config file
    cp /Applications/Wireless\ Network\ Utility.app/ProfilesList-${1}.plist /Applications/Wireless\ Network\ Utility.app/ProfilesList.plist # Copy as the main config file our wanted config file which contains the network I want to connect to
    open /Applications/Wireless\ Network\ Utility.app # Re-open the app so we don't have to do anything else
else
    echo "Error : no config file found for this network"
fi
