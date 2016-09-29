#ifndef QUEUE_H_INCLUDED
#define QUEUE_H_INCLUDED
#include <iostream>

#define MAX_QUEUE_SIZE = 80

class Queue {
    private:
        int* queue;
        int size;
    public:
        enum EXCEPTIONS {FULLQUEUE, NOTEMPTY};

        Queue() { queue = NULL; size = 0; }
        ~Queue() { if (queue != NULL) delete[] queue; }
        Queue(const Queue& other);
        Queue& operator=(const Queue& other);

        bool isEmpty () const;
        bool isFull() const;
        unsigned int getSize() const;
        void Insert(const int new_element);
        unsigned int Remove();

        friend Queue operator+ (const int new_element);
        friend Queue operator+ (const Queue& other});
}

#endif // QUEUE_H_INCLUDED
