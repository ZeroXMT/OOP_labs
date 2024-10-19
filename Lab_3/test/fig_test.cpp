#include <gtest/gtest.h>
#include "../include/rectangle.hpp"
#include "../include/square.hpp"
#include "../include/trapezoid.hpp"
#include <vector>
#include <sstream>

// Тест вычисления геометрического центра квадрата
TEST(SquareTest, Center) {
    square* sq = new square();
    std::istringstream input("0 0\n2 0\n2 2\n0 2\n");
    input >> sq;

    figure::point center = sq->center();
    EXPECT_DOUBLE_EQ(center.x, 1.0);
    EXPECT_DOUBLE_EQ(center.y, 1.0);

    delete sq;
}

// Тест вычисления геометрического центра прямоугольника
TEST(RectangleTest, Center) {
    rectangle* rec = new rectangle();
    std::istringstream input("0 0\n3 0\n3 2\n0 2\n");
    input >> rec;

    figure::point center = rec->center();
    EXPECT_DOUBLE_EQ(center.x, 1.5);
    EXPECT_DOUBLE_EQ(center.y, 1.0);

    delete rec;
}

// Тест вычисления геометрического центра трапеции
TEST(TrapezoidTest, Center) {
    trapezoid* trap = new trapezoid();
    std::istringstream input("0 0\n2 2\n4 2\n2 0\n");
    input >> trap;

    figure::point center = trap->center();
    EXPECT_DOUBLE_EQ(center.x, 2.0);
    EXPECT_DOUBLE_EQ(center.y, 1.0);

    delete trap;
}

// Тест площади квадрата
TEST(SquareTest, Area) {
    square* sq = new square();
    std::istringstream input("0 0\n2 0\n2 2\n0 2\n");
    input >> sq;

    double area = static_cast<double>(*sq);
    EXPECT_DOUBLE_EQ(area, 4.0);

    delete sq;
}

// Тест площади прямоугольника
TEST(RectangleTest, Area) {
    rectangle* rec = new rectangle();
    std::istringstream input("0 0\n3 0\n3 2\n0 2\n");
    input >> rec;

    double area = static_cast<double>(*rec);
    EXPECT_DOUBLE_EQ(area, 6.0); 

    delete rec;
}

// Тест площади трапеции
TEST(TrapezoidTest, Area) {
    trapezoid* trap = new trapezoid();
    std::istringstream input("0 0\n2 2\n4 2\n2 0\n");
    input >> trap;

    double area = static_cast<double>(*trap);
    EXPECT_DOUBLE_EQ(area, 4.0);

    delete trap;
}

// Тест ввода/вывода для квадрата
TEST(SquareTest, InputOutput) {
    square* sq = new square();
    std::istringstream input("0 0\n2 0\n2 2\n0 2\n");
    input >> sq;

    std::ostringstream output;
    output << sq; 

    EXPECT_EQ(output.str(), "Корды квадрата: (0,0) (2,0) (2,2) (0,2)\n");

    delete sq; // Освобождаем память
}

// Тест ввода/вывода для прямоугольника
TEST(RectangleTest, InputOutput) {
    rectangle* rec = new rectangle();
    std::istringstream input("0 0\n3 0\n3 2\n0 2\n");
    input >> rec;

    std::ostringstream output;
    output << rec;

    EXPECT_EQ(output.str(), "Корды прямоугольника: (0,0) (3,0) (3,2) (0,2)\n");

    delete rec;
}

// Тест ввода/вывода для трапеции
TEST(TrapezoidTest, InputOutput) {
    trapezoid* trap = new trapezoid();
    std::istringstream input("0 0\n2 2\n4 2\n2 0\n");
    input >> trap;

    std::ostringstream output;
    output << trap;

    EXPECT_EQ(output.str(), "Корды трапеции: (0,0) (2,2) (4,2) (2,0)\n");

    delete trap;
}

// Тест для массива фигур
TEST(FigureArrayTest, TotalAreaCalculation) {
    std::vector<figure*> figures;

    square* sq = new square();
    std::istringstream input1("0 0\n2 0\n2 2\n0 2\n");
    input1 >> sq;
    figures.push_back(sq);
    rectangle* rec = new rectangle();
    std::istringstream input2("0 0\n3 0\n3 2\n0 2\n");
    input2 >> rec;
    figures.push_back(rec);

    trapezoid* trap = new trapezoid();
    std::istringstream input3("0 0\n2 2\n4 2\n2 0\n");
    input3 >> trap;
    figures.push_back(trap);

    // Считаем общую площадь
    double totalArea = 0;
    for (const auto& fig : figures) {
        totalArea += static_cast<double>(*fig);
    }
    EXPECT_DOUBLE_EQ(totalArea, 14.0); // Сумма площадей фигур: 4 + 6 + 4 = 14.0

    for (auto& fig : figures) {
        delete fig;
    }
}

// Тест удаления фигуры из массива
TEST(FigureArrayTest, RemoveFigureByIndex) {
    std::vector<figure*> figures;

    square* sq = new square();
    rectangle* rec = new rectangle();
    trapezoid* trap = new trapezoid();
    figures.push_back(sq);
    figures.push_back(rec);
    figures.push_back(trap);

    // Удаляем фигуру по индексу 1 (rectangle)
    delete figures[1];
    figures.erase(figures.begin() + 1);

    // остались square и trapezoid
    ASSERT_EQ(figures.size(), 2);
    ASSERT_TRUE(dynamic_cast<square*>(figures[0]) != nullptr);
    ASSERT_TRUE(dynamic_cast<trapezoid*>(figures[1]) != nullptr);

    delete figures[0];
    delete figures[1];
}