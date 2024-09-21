#include <iostream>
#include "function.cpp"

int main(int arg, char** argv)
{
    std::string day;
    long long number;
    std::cin >> day >> number;
    std::cout << is_afraid(day, number) << std::endl;
    return 0;
}