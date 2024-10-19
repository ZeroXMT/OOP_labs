#ifndef SQUARE
#define SQUARE

#include "figure.hpp"

class square : public figure {

private:

    point vertices[4];

public:
    
    square() = default;

    point center() const override;
    explicit operator double() const override;

    square& operator=(const square& other);
    square& operator=(square&& other) noexcept;

    bool operator==(const square& other) const;
    bool operator!=(const square& other) const;

protected:
    std::ostream &print(std::ostream &stream) const override;
    std::istream &read(std::istream &stream) override;

};

#endif