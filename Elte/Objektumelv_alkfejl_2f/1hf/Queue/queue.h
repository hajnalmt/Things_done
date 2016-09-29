#ifndef QUEUE_H_INCLUDED
#define QUEUE_H_INCLUDED
#include <iostream>

#define MAX_QUEUE_SIZE = 80

class Queue {
    private:
        int* queue;
        unsigned int size;
    public:
        enum EXCEPTIONS {FULLQUEUE, NOTEMPTY, CANNOTREMOVE};

        Queue() { this->queue = NULL; this->size = 0; }
        ~Queue() { if (this->queue != NULL) delete[] this->queue; }
        Queue(const Queue& other);
        Queue& operator=(const Queue& other);

        bool isEmpty () const;
        bool isFull() const;
        unsigned int getSize() const;
        void Insert(const int new_element);
        int Remove();

        friend std::istream& operator>> (std::istream& s, Queue& q);
        friend std::ostream& operator<< (std::ostream& s, const Queue& q);
}

#endif // QUEUE_H_INCLUDED
