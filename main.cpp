/*
HW 2 - Random Sentence Generator
by Natalie Tashchuk for Dr Libby's CS 352 Programming Languages
10/11/2022

This program:
1) readings in a grammar file from stdin
2) generates a random sentence in that language to stdout

*/

#include <iostream>  //IO
#include <fstream> //File r/w
#include <string>

using namespace std;

int main(){

    ifstream gfile;  //grammar file
    string filename;
    string myline;  //storing and output file 1 line at a time

    cout << "Enter a .g grammar file to read from " << endl;
    cin >> filename;
    
    gfile.open(filename);

    if (gfile.is_open()){
        while (gfile.good()){
            getline(gfile, myline);  //get 1 line at a time
            cout << myline << '\n';  //print 1 line at a time
        }
    }
    else {
        cout << "Couldn't open file! Make sure to include 'grammars/' before file name" << endl;

    }

    cout << "Done!" << endl;
    return 0;
}
