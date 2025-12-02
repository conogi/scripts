#!/bin/bash

# Update package lists
sudo apt update

# List upgradeable packages and output to file
sudo apt upgrade -s > pastupgrades/upgrades_$(date "+%m_%d_%Y").txt

# Upgrade necessary packages
sudo apt upgrade -y

# Remove unnecessary packages/dependencies 
sudo apt autoremove -y

# Remove upgrade.txt files from more than 90 days ago
find ./pastupgrades -mtime +90 -type f -delete

# Clean package cache
sudo apt clean -y

# Display message when complete
echo "System has been succesfully upgraded"
