#!/bin/bash 

echo "=========================================="
echo "Updating System packages..."
echo "=========================================="

# Update package list
sudo apt update

# Check if update was successful
if [ $? -ne 0 ]; then
    echo "Package update failed!"
    exit 1
    fi

# Upgrade installed packages
sudo apt upgrade -y

# Check if upgrade was successful
if [ $? -eq 0]; then
    echo "=============================="
    echo "System updated successfully!"
    echo "=============================="
else
echo "System upgrade failed!"
exit 1
fi