JamomaCore
==========

[![Stories in Ready](https://badge.waffle.io/jamoma/jamomacore.png?label=ready&title=Ready)](http://waffle.io/jamoma/jamomacore)

Jamoma Frameworks for Audio and Control Structure

# Building with CMake
## Native compile
~~~~
mkdir build
cd build
cmake ..
make 
sudo make install
~~~~

## Cross compile
You can cross compile JamomaCore for different arch.
You need a crosscompile toochain depending for which platform you want to crosscompile.

### arm-linux-gnueabihf / Raspberry Pi
You can find the official crosscompile binary here : https://github.com/raspberrypi/tools.git
Just add the `tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin` to your `PATH`.
Then run : 
~~~~
mkdir build-RPi
cd build-RPi
cmake -DCMAKE_TOOLCHAIN_FILE=../Core/Shared/CMake/arm-linux-gnueabihf.cmake ..
make
~~~~
