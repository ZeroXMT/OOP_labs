#include <iostream>
#include <memory>
#include "../include/Point.hpp"
#include "../include/Figure.hpp"
#include "../include/square.hpp"
#include "../include/rectangle.hpp"
#include "../include/trapezoid.hpp"
#include "../include/Array.hpp"



int main() {

    // Добавление и удаление фигур в массив
    std::cout << std::endl << "Insert and delete" << std::endl;
    Array<Figure<double>, double> fig_array;
    std::cout << "-----------------------------------------------------------------" << std::endl;
    std::cout << std::boolalpha << "fig_array is empty: " <<  fig_array.is_empty() << std::endl;
    std::cout << "-----------------------------------------------------------------" << std::endl << std::endl;
    
    std::shared_ptr<Figure<double>> fig_1;
    try {
        fig_1 = std::make_shared<Square<double>>(Square<double>({0,0}, {0, 1}, {1, 1}, {1, 0}));
        fig_array.push_back(fig_1);
    } catch (std::bad_alloc const & exception) {
        throw exception;
    }
    
    
    fig_array.print();
    std::cout << "=================================================================" << std::endl;
    std::cout << "fig_array size: " <<  fig_array.size() << ", total area: " << fig_array.total_area() << std::endl << std::endl;
    std::shared_ptr<Figure<double>> fig_2;
    std::shared_ptr<Figure<double>> fig_3;
    try {
        fig_2 = std::make_shared<Rectangle<double>>(Rectangle<double>({0,0}, {0, 2}, {4, 2}, {4, 0}));
        fig_3 = std::make_shared<Trapezoid<double>>(Trapezoid<double>({0,0}, {4, 0}, {0, 3}, {6, 3}));
        fig_array.insert(fig_2, 0);
        fig_array.insert(fig_3, 1);
    } catch (std::bad_alloc const & exception) {
        throw exception;
    }

    fig_array.print();
    std::cout << "=================================================================" << std::endl;
    std::cout << "fig_array size: " <<  fig_array.size() << ", total area: " << fig_array.total_area() << std::endl << std::endl;
    fig_array.remove(1);
    std::cout << "fig_array size: " <<  fig_array.size() << std::endl;
    fig_array.print();
    std::cout << "=================================================================" << std::endl;
    std::cout << "fig_array size: " <<  fig_array.size() << ", total area: " << fig_array.total_area() << std::endl << std::endl;
    try {
        fig_array.insert(fig_3, 1);
    } catch (std::bad_alloc const & exception) {
        throw exception;
    }
    fig_array.print();
    std::cout << "=================================================================" << std::endl;
    std::cout << "fig_array size: " <<  fig_array.size() << ", total area: " << fig_array.total_area() << std::endl << std::endl;


    // Операции с фигурами
    std::cout << std::endl << "Figure functions" << std::endl;
    std::cout << "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++" << std::endl;

    for (size_t i = 0; i < fig_array.size(); ++i) {
        std::cout << fig_array[i].get() << ' ' << *fig_array[i] << " center_x: " << fig_array[i]->center().x
        << " center_y: " << fig_array[i]->center().y << " area " << static_cast<double>(*fig_array[i]) << std::endl;
    }
    std::cout << "fig_array size: " <<  fig_array.size() << ", total area: " << fig_array.total_area() << std::endl;
    
    std::cout << "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++" << std::endl;

    return 0;
}  