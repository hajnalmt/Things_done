#include "queue.h"

using namespace std;

Queue::Queue(const Queue& other) {
    this->size = other.getSize();
    this->queue = new int[size];
    for(int i=0; i < this->size; ++i) this->queue[i] = other.queue[i];
}

Queue& Queue::operator=(const Queue& other) {
    if ( !this->isEmpty() ) throw NOTEMPTY;
    if ( this == other ) return *this;
    for (int i=0; i<other.size; ++i) this->queue[i] = other.queue[i];
    return *this;
}

 bool Queue::isEmpty () const {
    return this->size == 0;
 }

 bool Queue::isFull() const {
    return this->size == MAX_QUEUE_SIZE;
 }

 unsigned int Queue::getSize() const {
    return this->size;
 }

 void Queue::Insert(const int new_element) {
    if (this->isFull()) throw FULLQUEUE;

    int* tmp = new int[this->size+1];
    std::copy(this->queue, this->queue+size, tmp);
    tmp[size] = new_element;
    delete[] this->queue;
    this->queue = tmp;
    this->size++;
 }

int Queue::Remove() {
    if (this->isEmpty)  throw CANNOTREMOVE;

    int result = this->queue[0];
    int* tmp = new int[this->size-1];
    std::copy(this->queue+1, this->queue+size, tmp);
    delete[] this->queue;
    this->queue = tmp;
    size--;
    return result
 }

std::istream& operator>> (std::istream& s, Queue& q) {
    for(int i=0; i<q.size; ++i) {
        s >> q.queue[i];
    }
    return s;
}
std::ostream& operator<< (std::ostream& s, const Queue& q) {
    for(int i=0; i<q.size; ++i) {
        s << q.queue[i] << " ";
    }
    s << endl;
    return s;
}
