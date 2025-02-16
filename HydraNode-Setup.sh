#!/bin/bash

set -e  # Stop script on error

# Display script header
echo "🟡 GAMERYARO"
echo "📝 Script by GAMERYARO aka NotRay"
echo ""

# Clone the HydraDAEMON repository
echo "💜 Cloning the Node repository..."
git clone https://github.com/HydraLabs-beta/daemon.git

# Navigate into the repository folder
echo "📂 Navigating into the DAEMON directory..."
cd daemon

# Install dependencies
echo "📦 Installing dependencies..."
npm install

# Ask the user for the command to run
echo "⌨️ Please enter the node config you want to run:"
read -p "⚡ Command: " user_command

# Execute the user-provided command with node
echo "🚀 Running the command: $user_command..."
$user_command

# Start the application
echo "🔥 Starting the HydraNode application..."
node .

echo -e "\n==================================="
echo -e "     📢 SUBSCRIBE TO GAMERYARO 📢     "
echo -e "==================================="
