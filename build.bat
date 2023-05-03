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
        cmake .. -Wno-dev -Werror -G "Unix Makefiles"
        make && (
              echo Compilation Succeded
        )||(
              echo Compilation Failed
              
        ) 
        goto exit
:run 
        cd build
        .\executable.exe
        goto exit
:exit
        echo "Done!"

:error
        echo "Please provide a valid target name"