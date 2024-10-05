cmake_minimum_required(VERSION 3.10)
project(Lab2)

# Установка стандарта C++
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)

include_directories(include)
add_executable(main src/main.cpp)

# Подключаем пакетную Google Test
find_package(GTest REQUIRED)
add_executable(hex_tests test/hex_test.cpp src/Hexad.cpp)

# Линкуем Google Test
target_link_libraries(hex_tests GTest::GTest GTest::Main pthread)

enable_testing()
add_test(NAME HexadUnitTests COMMAND hex_tests)