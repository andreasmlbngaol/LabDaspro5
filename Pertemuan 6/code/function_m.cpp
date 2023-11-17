#include <bits/stdc++.h>
using namespace std;

int area(int length, int width) {
    return length * width;
    cout << "Hello";
}

void show(int area) {
    cout << "Luas = " << area << endl;
}

void clear() {
    system("cls");
}






// main program
int main() {
    clear();
    int panjang = 4;
    int lebar = 5;
    int luas = area(panjang, lebar);
    show(luas);
    return 0;
}