#include <iostream>

using namespace std;

int Main(){
    int a = 1;
    int b = 1;
    int n,sum;
    cout << "Type in the number: ";
    cin >> n;
    for (int i = 3; i <= n; i++){
        sum = a + b;
        cout << sum << " ";
        a = b;
        b = sum;
    }
    return 0;
}
