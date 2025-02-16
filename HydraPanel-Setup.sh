#!/bin/bash

set -e  # Stop script on error

echo -e "\e[35m💜 Starting HydraPanel Setup...\e[0m"

# Install necessary dependencies
if ! command -v git &> /dev/null; then
    echo -e "\e[31m❌ Git is not installed. Installing Git...\e[0m"
    sudo apt update && sudo apt install -y git
fi

if ! command -v node &> /dev/null || ! command -v npm &> /dev/null; then
    echo -e "\e[31m❌ Node.js and npm are required. Installing...\e[0m"
    curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
    sudo apt install -y nodejs
fi

# Clone and setup HydraPanel
echo -e "\e[35m💜 Cloning HydraPanel...\e[0m"
git clone https://github.com/hydren-dev/HydraPanel.git || { echo -e "\e[31m❌ Failed to clone HydraPanel.\e[0m"; exit 1; }
cd HydraPanel
npm install
npm run seed
npm run createUser

# Start HydraPanel
echo -e "\e[35m💜 Starting HydraPanel...\e[0m"
node . &

echo -e "\e[1;36m\n===================================\n      SUBSCRIBE TO GAMERYARO      \n===================================\e[0m"
