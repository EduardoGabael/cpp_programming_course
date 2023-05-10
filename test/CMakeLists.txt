cmake_minimum_required(VERSION 3.24.0)


set(UTEST_LIBRARIES
    gtest_main
    gmock_main)


add_executable(unit_test1 test.cpp)
target_link_libraries(unit_test1 ${UTEST_LIBRARIES})


add_test(unit_test unit_test1)