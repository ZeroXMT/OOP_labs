#include "../include/square.hpp"
#include <cmath>
#include <iostream>


figure::point square::center() const {
    point center;
    for (const auto& vertex : vertices) {
        center.x += vertex.x;
        center.y += vertex.y;
    }
    center.x /= 4;
    center.y /= 4;
    return center;
}

square::operator double() const {
    double side = figure::distance(vertices[0], vertices[1]);  // все стороны равны
    return side * side;
}


std::ostream &square::print(std::ostream &stream) const {
    stream << "Корды квадрата:";
    for (const auto& vertex : vertices) {
        stream << " (" << vertex.x << "," << vertex.y << ")";
    }
    stream << "\n";
    return stream;
}


std::istream &square::read(std::istream &stream) {
    for (auto& vertex : vertices) {
        stream >> vertex.x >> vertex.y;
    }
    return stream;
}


//копирование
square& square::operator=(const square& other) {
    if (this != &other) { 
        for (int i = 0; i < 4; ++i) {
            vertices[i] = other.vertices[i];
        }
    }
    return *this;
}


//перемещение
square& square::operator=(square&& other) noexcept {
    if (this != &other) { 
        for (int i = 0; i < 4; ++i) {
            vertices[i] = std::move(other.vertices[i]);
        }
    }
    return *this;
}


bool square::operator==(const square& other) const {
    for (int i = 0; i < 4; ++i) {
        if (vertices[i].x != other.vertices[i].x || vertices[i].y != other.vertices[i].y) {
            return false;
        }
    }
    return true;
}


bool square::operator!=(const square& other) const {
    return !(*this == other);
}