if not exist "build" ( 
    mkdir "build"
)
cd build
call "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" x64
set PICO_SDK_PATH=C:\Pico\pico-sdk
set PICO_TOOLCHAIN_PATH=C:\Program Files (x86)\Arm GNU Toolchain arm-none-eabi\11.2 2022.02
cmake -G "NMake Makefiles" ..
nmake
cmd /k
