# crostini-desktop-automation
This script automates the process of setting up a full Linux desktop environment on ChromeOS using Crostini.

## Credit and Inspiration

This project was inspired by and based on the work of R. S. Ake. Check out her resources:

- YouTube Channel: [Ruth Ake](https://www.youtube.com/@ruthake)
- Book: [The Chromebook Guide to Google Linux: 2nd Edition](https://www.amazon.com/dp/B0C2RPWWMZ)

- Complete install instructions from Ruth.

    From the Terminal app:
        sudo apt update -y
        sudo apt dist-upgrade -y
        sudo apt install task-lxde-desktop -y
        sudo apt install xserver-xephyr -y
        sudo apt install nano -y
        sudo systemctl disable lightdm
        sudo nano /usr/bin/gol
            Xephyr -br -fullscreen -resizeable :20 &
            sleep 5
            DISPLAY=:20 startlxde &
        Ctrl-O, Enter, and Ctrl-X to save the file and exit nano
        sudo chmod +x /usr/bin/gol
        gol
(end)

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

This script offers several advantages over manually typing commands:

Automation: The script executes all commands in sequence automatically, saving time and reducing the chance of human error.

Consistency: It ensures that the same steps are performed every time, maintaining consistency across multiple executions.

Error handling: The script can include error checks and provide feedback, which might be overlooked when typing commands manually.

Customization: It allows for easy modification of parameters or adding new features without retyping the entire command sequence.

Documentation: The script serves as a record of the exact steps performed, which is useful for future reference or sharing with others.

Simulated loading: The script includes visual feedback with simulated loading, enhancing the user experience.

Progress tracking: It keeps count of completed tasks, providing a summary at the end.

Colorful output: The script uses color-coded messages to improve readability and highlight important information.

## Remember

- To shut down Linux: Right-click Terminal app > select Shut down Linux > close Terminal app
- To start the desktop later: Open Terminal app > select penguin > gol

Enjoy your new Linux desktop environment on ChromeOS! 🐧💻

## License
This project is dedicated to the public domain. Feel free to use, modify, and distribute it as you wish, with no attribution required.
