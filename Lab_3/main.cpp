#include <iostream>
#include <vector>
#include "./include/rectangle.hpp"
#include "./include/square.hpp"
#include "./include/trapezoid.hpp"

void addFigureMenu(std::vector<figure*>& figures) {
    char choice;
    while (true) {
        std::cout << "\nДобавить фигуру (r - прямоугольник, s - квадрат, t - трапеция, q - вернуться в главное меню): ";
        std::cin >> choice;

        if (choice == 'q') break;

        figure* fig = nullptr;
        if (choice == 'r') {
            fig = new rectangle();
        } else if (choice == 's') {
            fig = new square();
        } else if (choice == 't') {
            fig = new trapezoid();
        } else {
            std::cout << "Некорректный выбор.\n";
            continue;
        }

        std::cout << "Введите координаты вершин фигуры:\n";
        std::cin >> fig;
        figures.push_back(fig);
        std::cout << "Фигура успешно добавлена.\n";
    }
}

void manageFiguresMenu(std::vector<figure*>& figures) {
    if (figures.empty()) {
        std::cout << "Список фигур пуст.\n";
        return;
    }

    int action;
    while (true) {
        std::cout << "\nМеню взаимодействия с фигурами:\n";
        std::cout << "1 - Вывести список фигур\n";
        std::cout << "2 - Узнать центр и площадь фигуры\n";
        std::cout << "3 - Вычислить общую площадь всех фигур\n";
        std::cout << "4 - Удалить фигуру\n";
        std::cout << "5 - Вернуться в главное меню\n";
        std::cout << "Выберите действие: ";
        std::cin >> action;

        if (action == 5) break;

        switch (action) {
            case 1: {
                std::cout << "Список фигур:\n";
                for (size_t i = 0; i < figures.size(); ++i) {
                    std::cout << "Фигура " << i + 1 << ": " << figures[i] << "\n";
                }
                break;
            }
            case 2: {
                size_t index;
                std::cout << "Введите номер фигуры (1-" << figures.size() << "): ";
                std::cin >> index;

                if (index > 0 && index <= figures.size()) {
                    figure::point center = figures[index - 1]->center();
                    std::cout << "Центр: (" << center.x << ", " << center.y << ")\n";
                    std::cout << "Площадь: " << static_cast<double>(*figures[index - 1]) << "\n";
                } else {
                    std::cout << "Некорректный индекс.\n";
                }
                break;
            }
            case 3: {
                double total_area = 0;
                for (const auto& fig : figures) {
                    total_area += static_cast<double>(*fig);
                }
                std::cout << "Общая площадь всех фигур: " << total_area << "\n";
                break;
            }
            case 4: {
                size_t index;
                std::cout << "Введите номер фигуры для удаления (1-" << figures.size() << "): ";
                std::cin >> index;

                if (index > 0 && index <= figures.size()) {
                    delete figures[index - 1];
                    figures.erase(figures.begin() + (index - 1));
                    std::cout << "Фигура успешно удалена.\n";
                } else {
                    std::cout << "Некорректный индекс.\n";
                }
                break;
            }
            default:
                std::cout << "Некорректный выбор.\n";
                break;
        }
    }
}

int main() {
    std::vector<figure*> figures;
    int mainChoice;

    while (true) {
        std::cout << "\nГлавное меню:\n";
        std::cout << "1 - Добавить фигуру\n";
        std::cout << "2 - Взаимодействовать с фигурами\n";
        std::cout << "3 - Выйти\n";
        std::cout << "Выберите действие: ";
        std::cin >> mainChoice;

        if (mainChoice == 3) break;
        switch (mainChoice) {
            case 1:
                addFigureMenu(figures);
                break;
            case 2:
                manageFiguresMenu(figures);
                break;
            default:
                std::cout << "Некорректный выбор.\n";
                break;
        }
    }

    // Освобождение памяти перед завершением программы
    for (auto& fig : figures) {
        delete fig;
    }

    return 0;
}