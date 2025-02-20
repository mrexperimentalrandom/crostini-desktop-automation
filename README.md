# crostini-desktop-automation
This script automates the process of setting up a full Linux desktop environment on ChromeOS using Crostini.

## Credit and Inspiration

This project was inspired by and based on the work of R. S. Ake. Check out her resources:

- YouTube Channel: [Ruth Ake](https://www.youtube.com/@ruthake)
- Book: [The Chromebook Guide to Google Linux: 2nd Edition](https://www.amazon.com/dp/B0C2RPWWMZ)

R. S. Ake's book is an excellent resource for Chromebook users looking to explore the world of Linux. It offers insights into:

- Installing Debian Linux on a Chromebook with just three clicks
- Exploring a vast universe of Linux software for various tasks
- Leveraging Chromebooks' optimized hardware and software for unmatched price performance

## Usage

1. Clone this repository:
git clone https://github.com/mrexperimentalrandom/crostini-desktop-setup.git

text
2. Navigate to the repository folder:
cd crostini-desktop-setup

text
3. Make the script executable:
chmod +x setup_desktop.sh

text
4. Run the script:
./setup_desktop.sh

text

## What This Script Does

This script automates the following tasks:
1. Updates and upgrades packages
2. Installs required packages (LXDE desktop, Xephyr, nano)
3. Disables LightDM
4. Creates and sets up the 'gol' script for launching the desktop environment
5. Launches the desktop environment

## Remember

- To shut down Linux: Right-click Terminal app > select Shut down Linux > close Terminal app
- To start the desktop later: Open Terminal app > select penguin > gol

Enjoy your new Linux desktop environment on ChromeOS! 🐧💻

## License
