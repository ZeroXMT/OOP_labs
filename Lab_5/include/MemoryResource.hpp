#ifndef MEMORYRESOURCE
#define MEMORYRESOURCE

#include <memory_resource>
#include <vector>

class FixedMemoryResource : public std::pmr::memory_resource {
private:
    std::pmr::vector<std::byte> memoryPool;
    std::pmr::vector<void*> freeBlocks;
    size_t blockSize;
    
protected:
    void* do_allocate(size_t bytes, size_t alignment) override;
    void do_deallocate(void* p, size_t bytes, size_t alignment) override;
    bool do_is_equal(const std::pmr::memory_resource& other) const noexcept override;

public:
    FixedMemoryResource(size_t poolSize, size_t blockSize);
    ~FixedMemoryResource();
};

#endif