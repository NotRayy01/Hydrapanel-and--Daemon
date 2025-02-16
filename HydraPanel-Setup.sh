#!/bin/bash

set -e  # Stop script on error

# Display script header
echo -e "\e[1;33m====================================\e[0m"
echo -e "\e[1;33m         RAY - HYDRAPANEL SETUP       \e[0m"
echo -e "\e[1;33m     Script by GAMERYARO AKA NotRay    \e[0m"
echo -e "\e[1;33m====================================\e[0m\n"

echo -e "\e[35m💜 Starting HydraPanel Setup...\e[0m"

# Clone and setup HydraPanel
echo -e "\e[35m💜 Cloning HydraPanel Repository... 🔄\e[0m"
if git clone https://github.com/hydren-dev/HydraPanel.git; then
    echo -e "\e[32m✅ HydraPanel cloned successfully.\e[0m"
else
    echo -e "\e[31m❌ Failed to clone HydraPanel. Exiting... 🚫\e[0m"
    exit 1
fi

# Navigate into the directory
cd HydraPanel

# Install dependencies
echo -e "\e[35m💜 Installing dependencies... 📦\e[0m"
npm install || { echo -e "\e[31m❌ Failed to install dependencies. Exiting... 🚫\e[0m"; exit 1; }

# Run seed and create user
echo -e "\e[35m💜 Seeding database... 🌱\e[0m"
npm run seed || { echo -e "\e[31m❌ Failed to seed database. Exiting... 🚫\e[0m"; exit 1; }

echo -e "\e[35m💜 Creating admin user... 👤\e[0m"
npm run createUser || { echo -e "\e[31m❌ Failed to create admin user. Exiting... 🚫\e[0m"; exit 1; }

# Start HydraPanel in the foreground to see logs
echo -e "\e[35m💜 Starting HydraPanel... 🚀\e[0m"
node .

echo -e "\e[1;36m\n===================================\n     📢 SUBSCRIBE TO GAMERYARO 📢     \n===================================\e[0m"
