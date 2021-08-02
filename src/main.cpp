#include <iostream>
#include <vector>
#include "header.hpp"

using namespace std;

int main () {
    
    vector<string> testVec;
    string A;
    char sym = 'A';
    //char *line = NULL;

    for (int i = 0; i <= 10; i++)
    {
        A += sym;
        testVec.push_back(A);
        sym++;
    }
    //*line = 1;
    int x = summ(5, 6);
    x++;
    return(0);
}