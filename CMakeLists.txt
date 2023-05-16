cmake_minimum_required(VERSION 3.24.0)

project(lalonchera LANGUAGES C CXX ASM)


set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

include(FetchContent)

FetchContent_Declare(googletest
                     GIT_REPOSITORY  https://github.com/google/googletest
                     GIT_TAG         release-1.12.1)

FetchContent_GetProperties(googletest)

if(NOT googletest_POPULATED)
                FetchContent_Populate(googletest)
                add_subdirectory(${googletest_SOURCE_DIR}${googletest_BUILD_DIR})
endif()

set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
#Enable testing

enable_testing()

add_subdirectory(test)

add_executable(executable construct.cpp)
