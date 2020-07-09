#include <iostream>

using namespace std;

int main(){
    int a, b;
    a = 1;
    b = 1;
    int i;
    cout << a << " ";
    cout << b << " ";
    for (i = 1 ; i <= 5 ; i++){
        cout << a + b << " ";
        i = a + b;
        a = b;
        b = i;
    }
    return 0;
}
