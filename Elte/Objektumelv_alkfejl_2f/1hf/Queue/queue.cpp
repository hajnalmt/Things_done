#include "queue.h"

using namespace std;

Queue::Queue(const Queue& other) {
    size = other.getSize();
    queue = new int[size];
    for(int i=0; i<size; ++i) queue[i] = other.queue[i]
}

Queue& Queue::operator=(const Queue& other) {
    if ( !.isEmpty() )

}
        bool isEmpty () const;
        bool isFull() const;
        unsigned int getSize() const;
        void Insert(const int new_element);
        unsigned int Remove();

        friend Queue operator+ (const int new_element);
        friend Queue operator+ (const Queue& other});
