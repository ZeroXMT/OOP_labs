#include "../include/Stack.hpp"
#include "../include/MemoryResource.hpp"
#include <gtest/gtest.h>

TEST(StackTest, PushPopTest) {
    constexpr size_t poolSize = 1024;
    constexpr size_t blockSize = 32;

    FixedMemoryResource resource(poolSize, blockSize);
    Stack<int> stack(&resource);

    stack.push(10);
    EXPECT_EQ(stack.top(), 10);
    stack.pop();
    EXPECT_TRUE(stack.empty());
}

TEST(StackTest, IteratorTest) {
    constexpr size_t poolSize = 1024;
    constexpr size_t blockSize = 32;

    FixedMemoryResource resource(poolSize, blockSize);
    Stack<int> stack(&resource);

    stack.push(1);
    stack.push(2);
    stack.push(3);

    auto it = stack.begin();
    EXPECT_EQ(*it, 3);
    ++it;
    EXPECT_EQ(*it, 2);
    ++it;
    EXPECT_EQ(*it, 1);
}