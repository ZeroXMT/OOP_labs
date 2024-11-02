cmake_minimum_required(VERSION 3.10)
project(Lab_4)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/include)
set(SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src)
set(TEST_DIR ${CMAKE_CURRENT_SOURCE_DIR}/test)

include_directories(${INCLUDE_DIR})

# file(GLOB_RECURSE SOURCES LIST_DIRECTORIES false ${SOURCE_DIR}/*.cpp)
file(GLOB_RECURSE TEST_SOURCES LIST_DIRECTORIES false ${TEST_DIR}/*.cpp)

# add_library(${CMAKE_PROJECT_NAME}_lib ${SOURCES})
add_executable(${CMAKE_PROJECT_NAME}_exe ${SOURCE_DIR}/main.cpp)
add_executable(${CMAKE_PROJECT_NAME}_tests ${TEST_SOURCES})

find_package(GTest REQUIRED)
target_include_directories(${CMAKE_PROJECT_NAME}_tests PRIVATE ${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})
target_link_libraries(Lab_4_tests GTest::GTest GTest::Main pthread)

enable_testing()
add_test(NAME Lab_4 COMMAND Lab_4_tests)