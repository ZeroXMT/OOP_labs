cmake_minimum_required(VERSION 3.10)
project(Lab_6)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/include)
set(SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src)
set(TEST_DIR ${CMAKE_CURRENT_SOURCE_DIR}/test)

include_directories(${INCLUDE_DIR})

# Collect all source files
file(GLOB SOURCES "${SOURCE_DIR}/*.cpp")

# Add the executable
add_executable(${CMAKE_PROJECT_NAME}_exe main.cpp ${SOURCES})

target_include_directories(${CMAKE_PROJECT_NAME}_exe PUBLIC ${INCLUDE_DIR})

# GTest integration
find_package(GTest REQUIRED)
add_executable(${CMAKE_PROJECT_NAME}_tests ${TEST_DIR}/test.cpp ${SOURCES})
target_include_directories(${CMAKE_PROJECT_NAME}_tests PRIVATE ${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})
target_link_libraries(${CMAKE_PROJECT_NAME}_tests GTest::GTest GTest::Main pthread)

enable_testing()
add_test(NAME Lab_6 COMMAND ${CMAKE_PROJECT_NAME}_tests)