#include <gtest/gtest.h>
#include "../src/function.cpp"

TEST(FearNumberTest, Mon) {
    EXPECT_TRUE(is_afraid("Понедельник", 12));
    EXPECT_FALSE(is_afraid("Понедельник", 13));
}

TEST(FearNumberTest, Tue) {
    EXPECT_TRUE(is_afraid("Вторник", 96));
    EXPECT_FALSE(is_afraid("Вторник", 95));
}

TEST(FearNumberTest, Wed) {
    EXPECT_TRUE(is_afraid("Среда", 34));
    EXPECT_FALSE(is_afraid("Среда", 35));
}

TEST(FearNumberTest, Thu) {
    EXPECT_TRUE(is_afraid("Четверг", 0));
    EXPECT_FALSE(is_afraid("Четверг", 1));
}

TEST(FearNumberTest, Fri) {
    EXPECT_TRUE(is_afraid("Пятница", 4));
    EXPECT_FALSE(is_afraid("Пятница", 3));
}

TEST(FearNumberTest, Sat) {
    EXPECT_TRUE(is_afraid("Суббота", 42));
    EXPECT_FALSE(is_afraid("Суббота", 43));
}

TEST(FearNumberTest, Sun) {
    EXPECT_TRUE(is_afraid("Воскресенье", 666));
    EXPECT_TRUE(is_afraid("Воскресенье", -666));
    EXPECT_FALSE(is_afraid("Воскресенье", 665));
}