cmake_minimum_required(VERSION 3.10)

# Название проекта
project(Lab_3)

# Установка стандарта C++
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

include_directories(include)

# сурсы для основной программы
set(SOURCES
    src/figure.cpp
    src/rectangle.cpp
    src/square.cpp
    src/trapezoid.cpp
    main.cpp
)

#  тест
set(TEST_SOURCES
    test/fig_test.cpp
)

# Основной исполняемый файл
add_executable(Lab3 ${SOURCES})

# Добавление Google Test пакета
find_package(GTest REQUIRED)

# Тесты
add_executable(Lab_3_Test ${TEST_SOURCES} src/figure.cpp src/rectangle.cpp src/square.cpp src/trapezoid.cpp)

# Линковка с Google Test и pthread для тестов
target_link_libraries(Lab_3_Test GTest::GTest GTest::Main pthread)

# Включение тестирования
enable_testing()
add_test(NAME Lab_3 COMMAND Lab_3_Test)