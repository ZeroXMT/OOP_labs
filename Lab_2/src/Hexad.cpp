#include "../include/Hex.hpp"
#include <stdexcept>
#include <algorithm> // std::max
#include <cstring>   // std::memcpy, std::strlen

hexad::hexad() : size(0), array(nullptr) {}

// Конструктор для инициализации массива нулями или другим значением
hexad::hexad(const size_t& n, unsigned char t) : size(n) {
    array = new unsigned char[size];
    std::fill(array, array + size, t);
}

// Конструктор для инициализации с помощью initializer_list
hexad::hexad(const std::initializer_list<unsigned char>& t) : size(t.size()) {
    array = new unsigned char[size];
    std::copy(t.begin(), t.end(), array);
}

// Конструктор для инициализации из строки
hexad::hexad(const std::string& t) {
    size = t.length();
    array = new unsigned char[size];

    for (size_t i = 0; i < size; ++i) {
        char c = t[size - 1 - i]; // Младший разряд в начале массива
        if (c >= '0' && c <= '9') {
            array[i] = c - '0';
        } else if (c >= 'A' && c <= 'F') {
            array[i] = c - 'A' + 10;
        } else if (c >= 'a' && c <= 'f') {
            array[i] = c - 'a' + 10;
        } else {
            delete[] array;
            throw std::invalid_argument("Invalid hex character");
        }
    }
}

// Конструктор копирования
hexad::hexad(const hexad& other) : size(other.size) {
    array = new unsigned char[size];
    std::copy(other.array, other.array + size, array);
}

// Конструктор перемещения
hexad::hexad(hexad&& other) noexcept : size(other.size), array(other.array) {
    other.size = 0;
    other.array = nullptr;
}

// Оператор присваивания
hexad& hexad::operator=(const hexad& other) {
    if (this != &other) {
        delete[] array;
        size = other.size;
        array = new unsigned char[size];
        std::copy(other.array, other.array + size, array);
    }
    return *this;
}

// Оператор сложения с присваиванием
hexad& hexad::operator+=(const hexad &other) {
    size_t maxSize = std::max(size, other.size);
    unsigned char* result = new unsigned char[maxSize + 1];  // +1 для возможного переноса

    unsigned char carry = 0;

    // Сложение с учетом переноса
    for (size_t i = 0; i < maxSize; ++i) {
        unsigned char a = (i < size) ? array[i] : 0;  // Если текущая цифра отсутствует, используем 0
        unsigned char b = (i < other.size) ? other.array[i] : 0;

        unsigned int sum = a + b + carry;
        result[i] = sum % 16;  // Сохраняем младшие 4 бита (шестнадцатеричная цифра)
        carry = sum / 16;  // Перенос, если сумма больше 15 (0x0F)
    }

    // Если есть перенос, добавляем его в конец результата
    if (carry) {
        result[maxSize] = 1;  // Записываем 1 в следующий разряд
        maxSize++;
    }

    // Удаляем старый массив и обновляем объект
    delete[] array;
    array = result;
    size = maxSize;
    
    return *this;
}

// Оператор вычитания с присваиванием
hexad& hexad::operator-=(const hexad& other) {
    if (*this < other) {
        throw std::invalid_argument("Negative result in unsigned subtraction");
    }

    unsigned char borrow = 0;
    for (size_t i = 0; i < size; ++i) {
        unsigned char digit1 = array[i];
        unsigned char digit2 = (i < other.size) ? other.array[i] : 0;
        unsigned char sub = digit1 - digit2 - borrow;
        if (sub >= 16) {
            sub += 16;
            borrow = 1;
        } else {
            borrow = 0;
        }
        array[i] = sub;
    }

    return *this;
}

// Операторы сравнения
bool hexad::operator==(const hexad& other) const {
    if (size != other.size) return false;
    return std::memcmp(array, other.array, size) == 0;
}

bool hexad::operator!=(const hexad& other) const {
    return !(*this == other);
}

bool hexad::operator<(const hexad& other) const {
    if (size != other.size) return size < other.size;
    for (size_t i = size; i > 0; --i) {
        if (array[i - 1] != other.array[i - 1]) {
            return array[i - 1] < other.array[i - 1];
        }
    }
    return false;
}

bool hexad::operator>(const hexad& other) const {
    return other < *this;
}

// Метод для вывода
std::ostream& hexad::print(std::ostream& os) const {
    for (size_t i = size; i > 0; --i) {
        os << std::hex << static_cast<int>(array[i - 1]);
    }
    return os;
}

// Деструктор
hexad::~hexad() noexcept {
    delete[] array;
}