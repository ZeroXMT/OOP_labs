#include "../include/MemoryResource.hpp"
#include <cstddef>
#include <stdexcept>

FixedMemoryResource::FixedMemoryResource(size_t poolSize, size_t blockSize)
    : memoryPool(poolSize), blockSize(blockSize) {
    if (poolSize < blockSize) {
        throw std::invalid_argument("Pool size must be greater than or equal to block size.");
    }
}

FixedMemoryResource::~FixedMemoryResource() {
    // Clear all allocated memory on destruction
    memoryPool.clear();
    freeBlocks.clear();
}

void* FixedMemoryResource::do_allocate(size_t bytes, size_t alignment) {
    if (bytes > blockSize) {
        throw std::bad_alloc();
    }
    if (!freeBlocks.empty()) {
        void* block = freeBlocks.back();
        freeBlocks.pop_back();
        return block;
    }
    if (memoryPool.size() >= blockSize) {
        void* block = memoryPool.data() + memoryPool.size() - blockSize;
        memoryPool.resize(memoryPool.size() - blockSize);
        return block;
    }
    throw std::bad_alloc();
}

void FixedMemoryResource::do_deallocate(void* p, size_t bytes, size_t alignment) {
    freeBlocks.push_back(p);
}

bool FixedMemoryResource::do_is_equal(const std::pmr::memory_resource& other) const noexcept {
    return this == &other;
}