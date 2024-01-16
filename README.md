# rp2040-vscode-windows-project-template

This is a Raspberry Pi Pico project template for running under VS Code on Windows with full debugging (using Picoprobe) without any CLI usage during normal development.

## First installation

- Install the Windows Pico installer (v1.5.1 tested at this time)  
https://github.com/raspberrypi/pico-setup-windows/releases/latest/download/pico-setup-windows-x64-standalone.exe  
(Note: this also installs VS Code if not already installed)

- Flash the pico-probe with `picoprobe.uf2` (included in the `files` folder)

## Per project

- Copy the files from the `template` folder into a new project directory

- Open the `CMakeLists.txt` file and edit the project name  
`project(project-template C CXX ASM)`  
to  
`project(projectnamehere C CXX ASM)`  

- Open VS Code using the `Pico - Visual Studio Code` start menu item (Important! This initialises various environment variables)

- Open the project folder in VS code
  - Click `Yes, I trust the authors` on the dialog
  - Click `Pico ARM GCC` on the list that comes up at the top
  - Wait a few seconds for the project to self-initialise
  - Open `main.c`
  - Press `F5` to Build and Start Debugging
  - If the pico-probe is alive and properly connected (check the connection of the 3 wires if not) then the onboard Pi Pico LED should start flashing
