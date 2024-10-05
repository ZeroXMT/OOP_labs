#ifndef hexad_h
#define hexad_h

#include <iostream>
#include <string>

class hexad {

    private :

        size_t size;
        unsigned char* array;

    public : 

        //Конструкторы
        hexad();
        hexad(const size_t& n, unsigned char t);             
        hexad(const std::initializer_list< unsigned char> &t);  
        hexad(const std::string &t);                           
        hexad(const hexad& other);
        hexad(hexad&& other) noexcept; 

        //Математические операторы
        bool operator== (const hexad &other) const;
        bool operator!= (const hexad &other) const; 
        bool operator< (const hexad &otbher) const; 
        bool operator> (const hexad &other) const; 

        hexad& operator= (const hexad &other); 
        hexad& operator+= (const hexad &other); 
        hexad& operator-= (const hexad &other);

        //Вывод числа
        std::ostream& print(std::ostream& os) const;

        //Диструктор
        virtual ~hexad() noexcept;
};

#endif