# rp2040-vscode-windows-project-template

This is a Raspberry Pi Pico project template for running under VS Code on Windows with full debugging (using Picoprobe) without any CLI usage during normal development.

## First installation

- Install Visual Studio Code _(VSCodeUserSetup-x64-1.69.2.exe)_

- Install extensions in VS Code:
  - C/C++ Extension Pack
  - Cortex-Debug
  
- Install CMake _(cmake-3.23.3-windows-x86_64.msi)_
  - Ensure that 'Add CMake to the system PATH for all users' is selected

- Install Build Tools for Visual Studio 2022 _(vs_BuildTools.exe)_
  - Select 'Desktop development with C++' and deselect all Optional components except for 
  ```
  MSVC v143 - VS 2022 C++ x64/x86 build tools (Latest)
  Windows 10 SDK (10.0.19041.0)
  C++ CMake tools for Windows
  ```

- Install Git for windows if not already installed _(Git-2.37.1-64-bit.exe)_

- Create 'C:\Pico' folder and checkout the pico-sdk
  - From within command prompt inside 'C:\Pico':
  ```
  git clone -b master https://github.com/raspberrypi/pico-sdk.git
  cd pico-sdk
  git submodule update --init
  ```
  
- Install Arm GNU Toolchain _(gcc-arm-11.2-2022.02-mingw-w64-i686-arm-none-eabi.exe)_
  
- Extract openocd to 'C:\Pico\openocd_picoprobe' _(openocd_picoprobe.zip available in this repo)_

## To use

- Checkout or download
- Run `build.bat`

(Note 1: You may need to change the path to `vcvarsall.bat` within `Build.bat`.)

(Note 2: Everytime you copy this template and/or change the project name within `CMakeLists.txt`, run `Build.bat`.)

(Note 3: Once `Build.bat` has run once, VS Code will automatically do builds from there on when debugging.)
- Open the project folder within VS Code as usual.
- Press "F5" to start debugging using the "Pico Debug" profile.

## Credit

This template is the result of a combination of 3 guides: [The official guide](https://datasheets.raspberrypi.com/pico/getting-started-with-pico.pdf), [this one](https://community.element14.com/products/raspberry-pi/b/blog/posts/working-with-the-raspberry-pi-pico-with-windows-and-c-c) [and this one,](https://community.element14.com/products/raspberry-pi/b/blog/posts/debugging-the-raspberry-pi-pico-on-windows-10) with the addition of some cleanup and `Build.bat`.
