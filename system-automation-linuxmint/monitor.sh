#!/bin/bash


# Function to check for system updates
check_updates() {
    echo "Checking for system updates..."
    # Update package list and check for available upgrades
    sudo apt update -y > /dev/null
    updates=$(sudo apt list --upgradable 2>/dev/null)


    if [[ -z "$updates" ]]; then
        echo "No updates available."
    else
        echo "Updates available:"
        echo "$updates"
    fi
}


# Call the function
check_updates
