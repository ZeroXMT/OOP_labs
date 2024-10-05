cmake_minimum_required(VERSION 3.10)
project(LAB_1)

set(CMAKE_CXX_STANDARD 14)

include(GoogleTest)

add_library(functioun src/function.cpp)

add_executable(Lab_1_main src/main.cpp)
add_executable(Lab_1_test test/test.cpp)

target_link_libraries(Lab_1_main functioun)
target_link_libraries(Lab_1_test functioun)


target_link_libraries(Lab_1_test gtest gtest_main)
