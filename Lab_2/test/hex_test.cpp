#include "../include/Hex.hpp"
#include <gtest/gtest.h>
#include <sstream> // для проверки вывода

// Тестирование конструктора по умолчанию
TEST(HexadTest, DefaultConstructor) {
    hexad h;
    std::ostringstream oss;
    h.print(oss);
    EXPECT_EQ(oss.str(), ""); // Проверяем, что объект пуст
}

// Тестирование конструктора с инициализацией символов
TEST(HexadTest, CharConstructor) {
    hexad h(4, 0xF); // 4 символа, все 0xF
    std::ostringstream oss;
    h.print(oss);
    EXPECT_EQ(oss.str(), "ffff"); // Ожидаем 4 цифры 'f'
}

// Тестирование конструктора от строки
TEST(HexadTest, StringConstructor) {
    hexad h("1A3F");
    std::ostringstream oss;
    h.print(oss);
    EXPECT_EQ(oss.str(), "1a3f");
}

// Тестирование конструктора копирования
TEST(HexadTest, CopyConstructor) {
    hexad h1("1A3F");
    hexad h2(h1); // Создаем копию
    std::ostringstream oss;
    h2.print(oss);
    EXPECT_EQ(oss.str(), "1a3f");
}

// Тестирование конструктора перемещения
TEST(HexadTest, MoveConstructor) {
    hexad h1("1A3F");
    hexad h2(std::move(h1)); // Перемещение
    std::ostringstream oss;
    h2.print(oss);
    EXPECT_EQ(oss.str(), "1a3f"); // h2 должен содержать данные
}

// Тестирование оператора присваивания
TEST(HexadTest, AssignmentOperator) {
    hexad h1("1A3F");
    hexad h2;
    h2 = h1; // Присваивание
    std::ostringstream oss;
    h2.print(oss);
    EXPECT_EQ(oss.str(), "1a3f");
}

// Тестирование оператора сложения
TEST(HexadTest, AdditionOperator) {
    hexad h1("1A3F");
    hexad h2("00B1");
    h1 += h2;
    std::ostringstream oss;
    h1.print(oss);
    EXPECT_EQ(oss.str(), "1af0"); // 1A3F + 00B1 = 1AF0
}

// Тестирование оператора вычитания
TEST(HexadTest, SubtractionOperator) {
    hexad h1("1A3F");
    hexad h2("00B1");
    h1 -= h2;
    std::ostringstream oss;
    h1.print(oss);
    EXPECT_EQ(oss.str(), "198e"); // 1A3F - 00B1 = 198E
}

// Тестирование оператора равенства
TEST(HexadTest, EqualityOperator) {
    hexad h1("1A3F");
    hexad h2("1A3F");
    EXPECT_TRUE(h1 == h2);
}

// Тестирование оператора неравенства
TEST(HexadTest, InequalityOperator) {
    hexad h1("1A3F");
    hexad h2("00B1");
    EXPECT_TRUE(h1 != h2);
}

// Тестирование оператора "меньше"
TEST(HexadTest, LessThanOperator) {
    hexad h1("00B1");
    hexad h2("1A3F");
    EXPECT_TRUE(h1 < h2);
}

// Тестирование оператора "больше"
TEST(HexadTest, GreaterThanOperator) {
    hexad h1("1A3F");
    hexad h2("00B1");
    EXPECT_TRUE(h1 > h2);
}

// Тестирование вывода
TEST(HexadTest, OutputTest) {
    hexad h("1A3F");
    std::ostringstream oss;
    h.print(oss);
    EXPECT_EQ(oss.str(), "1a3f");
}