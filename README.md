# rp2040-vscode-windows-project-template

This is a Raspberry Pi Pico project template for running under VS Code on Windows with full debugging (using Picoprobe) without any CLI usage during normal development.

IMPORTANT: Change the paths in environment.bat to match your system if you don't have the same versions as shown in the installation guide below.

## First installation

- Install Visual Studio Code _(VSCodeUserSetup-x64-1.69.2.exe)_

- Install extensions in VS Code:
  - C/C++ Extension Pack
  - Cortex-Debug
  
- Install CMake _(cmake-3.23.3-windows-x86_64.msi)_
  - Ensure that 'Add CMake to the system PATH for all users' is selected

- Install Build Tools for Visual Studio 2022 _(vs_BuildTools.exe)_
  - Select 'Desktop development with C++' and ensure the following Optional components are selected for install
  ```
  MSVC v143 - VS 2022 C++ x64/x86 build tools (Latest)
  Windows 10 SDK (10.0.19041.0)
  C++ CMake tools for Windows
  ```

- Install Git for windows if not already installed _(Git-2.37.1-64-bit.exe)_

- Install Python 3 _(python-3.10.6-amd64.exe)_

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
- For CLI build, run `build.bat`
- For VS Code build, select the `[Pico]` build kit and click Build
- For VS Code debugging, press "F5" to start debugging using the "Pico Debug" profile

## Credit

This template is the result of a combination of 3 guides: [The official guide](https://datasheets.raspberrypi.com/pico/getting-started-with-pico.pdf), [this one](https://community.element14.com/products/raspberry-pi/b/blog/posts/working-with-the-raspberry-pi-pico-with-windows-and-c-c) [and this one,](https://community.element14.com/products/raspberry-pi/b/blog/posts/debugging-the-raspberry-pi-pico-on-windows-10) with the addition of some cleanup and `Build.bat`.
