@echo off 
@echo off 

if %1% NEQ "" (
    if %1%==test  goto test 
    if %1%==run   goto run 
    goto error
) else (
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
        .\executable.exe
        cd test
        .\unit_test1.exe
        goto exit
:exit
        echo "Done!"

:error
        echo "Please provide a valid target name"