#include "./include/Stack.hpp"
#include "./include/MemoryResource.hpp"
#include <iostream>

int main() {
    constexpr size_t poolSize = 1024;
    constexpr size_t blockSize = 32;

    FixedMemoryResource resource(poolSize, blockSize);
    Stack<int> stack(&resource);

    int n;
    std::cout << "Enter numbers to push onto the stack (-1 to stop): ";
    while (std::cin >> n && n != -1) {
        stack.push(n);
    }

    std::cout << "Stack contents (top to bottom): ";
    for (auto it = stack.begin(); it != stack.end(); ++it) {
        std::cout << *it << " ";
    }
    std::cout << "\n";

    return 0;
}