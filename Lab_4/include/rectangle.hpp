#ifndef RECTANGLE
#define RECTANGLE

#include "Figure.hpp"

template<typename T>
class Rectangle final : public Figure<T> {
private:
    Point<T> _first;
    Point<T> _second;
    Point<T> _third;
    Point<T> _fourth;

    bool is_rectangle(Point<T> const & first, Point<T> const & second, Point<T> const & third, Point<T> const & fourth) const;

public: 
    explicit Rectangle() = default;
    explicit Rectangle(Point<T> const & first, Point<T> const & second, Point<T> const & third, Point<T> const & fourth);
    
    Point<T> center() const noexcept override;
    double area() const noexcept override;
    explicit operator double() const noexcept override;
    bool operator==(Rectangle const & rec);

    void input(std::istream& is) override;
    void print(std::ostream& os) const override;

    template<T> friend std::istream& operator>>(std::istream& is, Rectangle<T> & rec);
    template<T> friend std::ostream& operator<<(std::ostream& os, Rectangle<T> const & rec); 
};

template<typename T>
bool Rectangle<T>::is_rectangle(Point<T> const & first, Point<T> const & second, Point<T> const & third, Point<T> const & fourth) const {
    double lens[6];
    lens[0] = get_len(first, second);
    lens[1] = get_len(first, third);   
    lens[2] = get_len(first, fourth);   
    lens[3] = get_len(second, third);   
    lens[4] = get_len(second, fourth);   
    lens[5] = get_len(third, fourth);              
    // Bubble sort
    for (size_t i = 0; i < 5; ++i) {
        int swapped = 0;
        for (size_t j = 0; j < 5 - i; ++j) {
            if (lens[j] > lens[j + 1]) {
                double temp = lens[j];
                lens[j] = lens[j + 1];
                lens[j + 1] = temp;
                swapped = 1;
            }
        }
        if (swapped == 0) break;
    }
    return (are_equal(lens[0], lens[1], 1e-6) && are_equal(lens[2], lens[3], 1e-6) && are_equal(lens[4], lens[5], 1e-6) &&
            are_equal(lens[4], sqrt(lens[0] * lens[0] + lens[2] * lens[2]), 1e-6));
}

template<typename T>
Rectangle<T>::Rectangle(Point<T> const & first, Point<T> const & second, Point<T> const & third, Point<T> const & fourth) {
    if (!is_rectangle(first, second, third, fourth)) {
        throw std::invalid_argument("It is not a rectangle");
    }

    _first = first;
    _second = second;
    _third = third;
    _fourth = fourth;
}

template<typename T>
Point<T> Rectangle<T>::center() const noexcept {
    Point<T> center;
    center.x = (_first.x + _second.x + _third.x + _fourth.x) / 4;
    center.y = (_first.y + _second.y + _third.y + _fourth.y) / 4;
    return center;
}

template<typename T>
double Rectangle<T>::area() const noexcept {
    double len_1 = get_len(_first, _second);
    double len_2 = get_len(_first, _third);
    double len_3 = get_len(_first, _fourth);
    
    double a, b;

    a = std::min(len_1, std::min(len_2, len_3));
    
    b = (len_1 + len_2 + len_3) - a - std::max(len_1, std::max(len_2, len_3));

    return a * b;
}

template<typename T>
Rectangle<T>::operator double() const noexcept {
    return area();
}

template<typename T>
bool Rectangle<T>::operator==(Rectangle<T> const & rec) {
    return (are_equal(_first.x, rec._first.x, 1e-6) && are_equal(_first.y, rec._first.y, 1e-6) &&
            are_equal(_second.x, rec._second.x, 1e-6) && are_equal(_second.y, rec._second.y, 1e-6) &&
            are_equal(_third.x, rec._third.x, 1e-6) && are_equal(_third.y, rec._third.y, 1e-6) &&
            are_equal(_fourth.x, rec._fourth.x, 1e-6) && are_equal(_fourth.y, rec._fourth.y, 1e-6));
}

template<typename T>
void Rectangle<T>::input(std::istream& is) {
    Point<T> first, second, third, fourth;
    is >> first.x >> first.y;
    is >> second.x >> second.y;
    is >> third.x >> third.y;
    is >> fourth.x >> fourth.y;
    if (!is_rectangle(first, second, third, fourth)) {
        throw std::invalid_argument("It is not a rectangle");
    }
    _first = first;
    _second = second;
    _third = third;
    _fourth = fourth;
}

template<typename T>
void Rectangle<T>::print(std::ostream& os) const {
    os << '{' << _first.x << ", " << _first.y << "} ";
    os << '{' << _second.x << ", " << _second.y << "} ";
    os << '{' << _third.x << ", " << _third.y << "} ";
    os << '{' << _fourth.x << ", " << _fourth.y << "} ";
}

template<typename T>
std::istream& operator>>(std::istream& is, Rectangle<T>& rec) {
    rec.input(is);
    return is;
}

template<typename T>
std::ostream& operator<<(std::ostream& os, Rectangle<T> const & rec) {
    rec.print(os);
    return os;
}

#endif