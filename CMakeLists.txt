cmake_minimum_required(VERSION 3.24.0)

project(lalonchera LANGUAGES C CXX ASM)

set(CMAKE_C_COMPILER   "C:/cygwin64/bin/gcc.exe" CACHE PATH "" FORCE)
set(CMAKE_CXX_COMPILER "C:/cygwin64/bin/g++.exe" CACHE PATH "" FORCE)

add_executable(executable construct.cpp)