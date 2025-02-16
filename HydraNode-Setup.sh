#!/bin/bash

set -e  # Stop script on error

# Clone the HydraDAEMON repository
echo -e "\e[35m💜 Cloning the HydraDAEMON repository...\e[0m"
git clone https://github.com/HydraLabs-beta/daemon.git

# Navigate into the repository folder
echo -e "\e[35m💜 Navigating into the DAEMON directory...\e[0m"
cd daemon

# Install dependencies
echo -e "\e[35m💜 Installing dependencies...\e[0m"
npm install

# Ask the user for the command to run
echo -e "\e[35m💜 Please enter the command you want to run:\e[0m"
read -p "Command: " user_command

# Replace http with https in the user input
user_command=$(echo $user_command | sed 's/http:/https:/g')

# Execute the user-provided command with node
echo -e "\e[35m💜 Running the command: $user_command...\e[0m"
$user_command

# Start the application
echo -e "\e[35m💜 Starting the HydraNode application...\e[0m"
node .

echo -e "\e[1;36m\n===================================\n      SUBSCRIBE TO GAMERYARO      \n===================================\e[0m"
