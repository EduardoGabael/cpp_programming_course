include(FetchContent)

FetchContent_Declare(googletest
                     GIT_REPOSITORY  https://github.com/google/googletest
                     GIT TAG         release-1.12.1)

FetchContent_GetProperties(googletest)

if(NOT googletest_POPULATED)
                FetchContent_Populate(googletest)
                add_subdirectory(${googletest_SOURCE_DIR}${googletest_BUILD_DIR})
endif()

set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)