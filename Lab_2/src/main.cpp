#include <iostream>
#include "../include/Hex.hpp"
#include "Hexad.cpp"

int main() {
    // Создание объектов класса hexad
    hexad hex1("1A3F");
    hexad hex2("00B1");

    // Вывод объектов
    std::cout << "Hex1: ";
    hex1.print(std::cout);
    std::cout << std::endl;

    std::cout << "Hex2: ";
    hex2.print(std::cout);
    std::cout << std::endl;

    // Операция сложения
    hex1 += hex2;
    std::cout << "Hex1 после сложения с Hex2: ";
    hex1.print(std::cout);
    std::cout << std::endl;

    // Операция вычитания
    hex1 -= hex2;
    std::cout << "Hex1 после вычитания Hex2: ";
    hex1.print(std::cout);
    std::cout << std::endl;

    // Операция сравнения
    if (hex1 == hex2) {
        std::cout << "Hex1 равно Hex2" << std::endl;
    } else if (hex1 > hex2) {
        std::cout << "Hex1 больше Hex2" << std::endl;
    } else {
        std::cout << "Hex1 меньше Hex2" << std::endl;
    }

    return 0;
}