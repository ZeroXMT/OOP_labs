#include <iostream>
#include "function.cpp"

int main(int arg, char** argv)
{
    std::string day;
    long long number;
    std::cin >> day >> number;
    std::cout << is_feared(day, number);
    return 0;
}