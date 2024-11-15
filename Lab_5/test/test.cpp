#include "../include/Stack.hpp"
#include "../include/MemoryResource.hpp"
#include <gtest/gtest.h>
#include <string>

struct ComplexData {
    int id;
    std::string name;
    double value;

    bool operator==(const ComplexData& other) const {
        return id == other.id && name == other.name && value == other.value;
    }
};

class StackTest : public ::testing::Test {
protected:
    constexpr static size_t poolSize = 8192;
    constexpr static size_t blockSize = 64;
    FixedMemoryResource resource;
    Stack<int> intStack;
    Stack<ComplexData> complexStack;

    StackTest() : resource(poolSize, blockSize), intStack(&resource), complexStack(&resource) {}
};

// Test pushing and popping multiple integers
TEST_F(StackTest, PushPopMultipleIntegers) {
    for (int i = 0; i < 10; ++i) {
        intStack.push(i);
    }
    
    for (int i = 9; i >= 0; --i) {
        EXPECT_EQ(intStack.top(), i);
        intStack.pop();
    }

    EXPECT_TRUE(intStack.empty());
}

// Test pushing and popping complex data
TEST_F(StackTest, PushPopComplexData) {
    ComplexData data1{1, "Alpha", 10.5};
    ComplexData data2{2, "Beta", 20.5};
    ComplexData data3{3, "Gamma", 30.5};

    complexStack.push(data1);
    complexStack.push(data2);
    complexStack.push(data3);

    EXPECT_EQ(complexStack.top(), data3);
    complexStack.pop();
    EXPECT_EQ(complexStack.top(), data2);
    complexStack.pop();
    EXPECT_EQ(complexStack.top(), data1);
    complexStack.pop();

    EXPECT_TRUE(complexStack.empty());
}

// Test boundary cases and exceptions
TEST_F(StackTest, PopEmptyStackThrows) {
    EXPECT_THROW(intStack.pop(), std::runtime_error);
    EXPECT_THROW(complexStack.pop(), std::runtime_error);
}

// Test data handling (adjust for 8 Kb)
TEST_F(StackTest, DataHandling) {
    for (int i = 0; i < 100; ++i) {
        intStack.push(i);
    }

    for (int i = 99; i >= 0; --i) {
        EXPECT_EQ(intStack.top(), i);
        intStack.pop();
    }

    EXPECT_TRUE(intStack.empty());
}

// Test iteration over complex data
TEST_F(StackTest, IterateComplexData) {
    ComplexData data1{1, "First", 123.45};
    ComplexData data2{2, "Second", 678.90};
    ComplexData data3{3, "Third", 42.42};

    complexStack.push(data1);
    complexStack.push(data2);
    complexStack.push(data3);

    auto it = complexStack.begin();
    EXPECT_EQ(*it, data3);
    ++it;
    EXPECT_EQ(*it, data2);
    ++it;
    EXPECT_EQ(*it, data1);
}

// Test memory resource reuse
TEST_F(StackTest, MemoryResourceReuse) {
    for (int i = 0; i < 5; ++i) {
        intStack.push(i);
    }
    for (int i = 0; i < 5; ++i) {
        intStack.pop();
    }

    for (int i = 10; i < 15; ++i) {
        intStack.push(i);
    }

    for (int i = 14; i >= 10; --i) {
        EXPECT_EQ(intStack.top(), i);
        intStack.pop();
    }

    EXPECT_TRUE(intStack.empty());
}