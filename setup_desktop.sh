#!/bin/bash

# Colors for pretty output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function for simulated loading
simulate_loading() {
    echo -n "Loading"
    for i in {1..3}; do
        sleep 0.5
        echo -n "."
    done
    echo
}

# Function for success messages
success_message() {
    echo -e "${GREEN}✔ $1${NC}"
}

# Counter for completed tasks
completed_tasks=0

echo -e "${YELLOW}Welcome to the Crostini Desktop Environment Setup Script!${NC}"
echo "Let's make your Chromebook awesome with a full Linux desktop!"
simulate_loading

echo -e "\n${BLUE}Step 1: Updating and upgrading packages${NC}"
simulate_loading
sudo apt update -y && sudo apt dist-upgrade -y
success_message "Packages updated and upgraded successfully!"
((completed_tasks++))

echo -e "\n${BLUE}Step 2: Installing required packages${NC}"
simulate_loading
sudo apt install task-lxde-desktop xserver-xephyr nano -y
success_message "Required packages installed successfully!"
((completed_tasks++))

echo -e "\n${BLUE}Step 3: Disabling LightDM${NC}"
simulate_loading
sudo systemctl disable lightdm
success_message "LightDM disabled successfully!"
((completed_tasks++))

echo -e "\n${BLUE}Step 4: Creating the 'gol' script${NC}"
simulate_loading
cat << EOF | sudo tee /usr/bin/gol > /dev/null
#!/bin/bash
Xephyr -br -fullscreen -resizeable :20 &
sleep 5
DISPLAY=:20 startlxde &
EOF
success_message "'gol' script created successfully!"
((completed_tasks++))

echo -e "\n${BLUE}Step 5: Making the 'gol' script executable${NC}"
simulate_loading
sudo chmod +x /usr/bin/gol
success_message "'gol' script is now executable!"
((completed_tasks++))

echo -e "\n${BLUE}Step 6: Running the 'gol' script${NC}"
simulate_loading
gol &
success_message "Desktop environment launched successfully!"
((completed_tasks++))

echo -e "\n${YELLOW} Congratulations! Setup complete! ${NC}"
echo -e "We've successfully completed ${GREEN}$completed_tasks tasks${NC} to set up your desktop environment."
echo -e "\nRemember:"
echo -e "1. To shut down Linux: Right-click Terminal app > select Shut down Linux > close Terminal app"
echo -e "2. To start the desktop later: Open Terminal app > select penguin > gol"
echo -e "\n${GREEN}Enjoy your new Linux desktop environment on ChromeOS!${NC} "
