#ifndef STACK_TPP
#define STACK_TPP

#include "../include/Stack.hpp"
#include <stdexcept>
#include <memory> // Include for std::allocator_traits

template <typename T>
Stack<T>::Stack(std::pmr::memory_resource* resource)
    : head(nullptr), allocator(std::pmr::polymorphic_allocator<Node>(resource)) {}

template <typename T>
Stack<T>::~Stack() {
    while (head) {
        pop();
    }
}

template <typename T>
void Stack<T>::push(const T& value) {
    Node* newNode = allocator.allocate(1);
    allocator.construct(newNode, Node{value, head});
    head = newNode;
}

template <typename T>
void Stack<T>::pop() {
    if (!head) {
        throw std::runtime_error("Pop from empty stack");
    }
    Node* temp = head;
    head = head->next;
    std::allocator_traits<decltype(allocator)>::destroy(allocator, temp);
    allocator.deallocate(temp, 1);
}

template <typename T>
T& Stack<T>::top() {
    if (!head) {
        throw std::runtime_error("Top from empty stack");
    }
    return head->value;
}

template <typename T>
bool Stack<T>::empty() const {
    return head == nullptr;
}

template <typename T>
typename Stack<T>::Iterator Stack<T>::begin() const {
    return Iterator(head);
}

template <typename T>
typename Stack<T>::Iterator Stack<T>::end() const {
    return Iterator(nullptr);
}

template <typename T>
Stack<T>::Iterator::Iterator(Node* node) : current(node) {}

template <typename T>
typename Stack<T>::Iterator& Stack<T>::Iterator::operator++() {
    if (current) {
        current = current->next;
    }
    return *this;
}

template <typename T>
bool Stack<T>::Iterator::operator!=(const Iterator& other) const {
    return current != other.current;
}

template <typename T>
typename Stack<T>::Iterator::reference Stack<T>::Iterator::operator*() const {
    return current->value;
}

#endif