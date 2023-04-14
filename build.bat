@echo off 
echo "Hola pinches putos"

mkdir build
cd build
cmake .. -Wno-dev -G "Unix Makefiles"
make