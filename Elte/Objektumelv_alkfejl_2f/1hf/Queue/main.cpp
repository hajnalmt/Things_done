#include <iostream>
#inculde "queue.h"

using namespace std;

class Menu {
 private:
    Queue a;
    void MenuWrite();
    void Get();
    void Set();
    void Sum();
    void Mul();
 public:
    Menu(){a.Size(3);}
    void Run();
};

int main() {
    Menu m;
    cout << "Hello world!" << endl;
    m.Run();
    return 0;
}

void Menu::Run() {
    int c = 0;
    do {
        MenuWrite();
        cin >> c;
        switch(c) {
            case 1: Get(); break;
            case 2: Set(); break;
            case 3: cin >> a ; break;
            case 4: cout << a; break;
            case 5: Sum(); break;
            case 6: Mul(); break;
        }
    } while(c!=0);
}

void Menu::MenuWrite()
{
    cout << endl << endl;
 cout << " 1. -Matrix feltoltese" << endl;
 cout << " 2. -Matrix adott elemenek lekerdezese" << endl;
 cout << " 3. -Matrix adott elemenek felulirasa" << endl;
 cout << " 4. -Matrix kiirasa" << endl;
 cout << " 5. -Matrixhoz egy masik matrix hozzaadasa" << endl;
 cout << " 6. -Matrix szorzasa egy masik matrixszal" << endl;
 cout << " 0. -Kilepes" << endl;
}
