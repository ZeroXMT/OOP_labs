#ifndef STACK
#define STACK

#include <memory_resource>
#include <iterator>

template <typename T>
class Stack {
public:
    struct Node {
        T value;
        Node* next;
    };

private:
    Node* head;
    std::pmr::polymorphic_allocator<Node> allocator;

public:
    Stack(std::pmr::memory_resource* resource);
    ~Stack();

    void push(const T& value);
    void pop();
    T& top();
    bool empty() const;

    class Iterator {
    public:
        using iterator_category = std::forward_iterator_tag;
        using value_type = T;
        using pointer = T*;
        using reference = T&;

        Iterator(Node* node);
        Iterator& operator++();
        bool operator!=(const Iterator& other) const;
        reference operator*() const;

    private:
        Node* current;
    };

    Iterator begin() const;
    Iterator end() const;
};

#include "../src/Stack.tpp"

#endif