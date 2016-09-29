#ifndef QUEUE_H_INCLUDED
#define QUEUE_H_INCLUDED
#include <iostream>

#define MAX_QUEUE_SIZE = 80

class Queue {
    private:
        int* queue;
    public:
        enum EXCEPTIONS {FULLQUEUE};

        Queue() { queue = NULL; }
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
