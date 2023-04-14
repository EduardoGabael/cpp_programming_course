@echo off 
@echo off 

if %1% NEQ ""(
    if %1% == test  goto test 
    if %1% == run   goto run 
) else(
    goto error
)

:test
        mkdir build
        cd build
        cmake .. -Wno-dev -G "Unix Makefiles"
        make
        goto exit
:run 
        cd build 
        ./executable
:exit
        echo "Done!"