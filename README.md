# rp2040-vscode-windows-project-template

This is a Raspberry Pi Pico project template for running under VS Code on Windows with full debugging (using Picoprobe) without any CLI usage during normal development.

## To use

- Checkout or download.
- Run `Build.bat` within the `build` folder.

(Note 1: You may need to change the path to `vcvarsall.bat` within `Build.bat`.)

(Note 2: Everytime you copy this template and/or change the project name within `CMakeLists.txt`, run `Build.bat`.)

(Note 3: Once `Build.bat` has run once, VS Code will automatically do builds from there on when debugging.)
- Open the project folder within VS Code as usual.
- Press "F5" to start debugging using the "Pico Debug" profile.

## Assumptions

- The build enviroment has been installed using the [instructions from here.](https://community.element14.com/products/raspberry-pi/b/blog/posts/working-with-the-raspberry-pi-pico-with-windows-and-c-c) Note: Using `Build Tools for for Visual Studio 2022` works fine for me.
- Prebuilt `openocd_picoprobe` [downloaded from here](https://drive.google.com/file/d/1SgZJepJWYQqCeC7m8se-yJLK9sv_AH8n/view?usp=sharing) and placed at the same level as `pico-sdk`. This means `msys2` does not need to be installed. If not placed at this suggested path, change value within `launch.json`.
- There is a `openocd_picoprobe` folder at the same level as `pico-sdk`. Inside this folder is just a single folder `tcl`, and inside `tcl` is `openocd.exe` along with many other files.

## Credit

This template is the result of a combination of 3 guides: [The official guide](https://datasheets.raspberrypi.com/pico/getting-started-with-pico.pdf), [this one](https://community.element14.com/products/raspberry-pi/b/blog/posts/working-with-the-raspberry-pi-pico-with-windows-and-c-c) [and this one,](https://community.element14.com/products/raspberry-pi/b/blog/posts/debugging-the-raspberry-pi-pico-on-windows-10) with the addition of some cleanup and `Build.bat`.
