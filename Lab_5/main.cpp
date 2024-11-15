#include "./include/Stack.hpp"
#include "./include/MemoryResource.hpp"
#include <iostream>
#include <string>

struct ComplexData {
    int id;
    std::string name;
    double value;

    friend std::ostream& operator<<(std::ostream& os, const ComplexData& data) {
        os << "ID: " << data.id << ", Name: " << data.name << ", Value: " << data.value;
        return os;
    }
};

int main() {
    constexpr size_t poolSize = 8192;
    constexpr size_t blockSize = 64;

    FixedMemoryResource resource(poolSize, blockSize);

    // Create a stack for integers
    Stack<int> intStack(&resource);
    std::cout << "Pushing integers onto the stack. Enter -1 to stop:\n";
    int number;
    while (std::cin >> number && number != -1) {
        intStack.push(number);
    }

    std::cout << "Stack contents (top to bottom): ";
    for (auto it = intStack.begin(); it != intStack.end(); ++it) {
        std::cout << *it << " ";
    }
    std::cout << "\n";

    // Create a stack for complex data
    Stack<ComplexData> complexStack(&resource);
    std::cout << "\nPushing complex data onto the stack. Enter -1 as ID to stop:\n";
    while (true) {
        ComplexData data;
        std::cout << "Enter ID: ";
        std::cin >> data.id;
        if (data.id == -1) break;
        
        std::cin.ignore();
        std::cout << "Enter Name: ";
        std::getline(std::cin, data.name);
        std::cout << "Enter Value: ";
        std::cin >> data.value;

        complexStack.push(data);
    }

    std::cout << "Complex stack contents (top to bottom):\n";
    for (auto it = complexStack.begin(); it != complexStack.end(); ++it) {
        std::cout << *it << "\n";
    }

    return 0;
}