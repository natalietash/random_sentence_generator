/*
HW 2 - Random Sentence Generator
by Natalie Tashchuk for Dr Libby's CS 352 Programming Languages
10/17/2022

This program:
1) reads in a grammar file from stdin
2) can preliminarily create vectors and add them to the grammar map

to implement:
3) parse the input into the map in replacement of dummy values
4)  generate a random sentence in the lang of the grammar to stdout

*/

#include <iostream>  //IO
#include <fstream> //File r/w
#include <string>
#include <map>
#include <vector>


using namespace std;


int main(){


    ifstream gfile;  //grammar file
    string filename;
    string myline;  //storing and output file 1 line at a time
    string token;
    int j = 0;

    using symbol = string;  //call a string a symbol
    using alternate = vector<symbol>;  //naming a vector of symbols an 'alternate'
    //vector is a growable array

    map <symbol, vector<alternate> > grammar;
    //maping a symbol (_NonTerm) to a vector of string vectors


    cout << "Enter a .g grammar file to read from " << endl;
    cin >> filename;
    
    gfile.open(filename);  //open the file for reading

    if (gfile.is_open()){
        while (gfile.good()){

	    //counting number of loop iterations
	    std::cout << "j = " << j << std::endl;
	    j++;
            
            //use ifstream in same exact way as cin to read file
            gfile >> token;  //grabs 1 word, _C for example

            //parse the token into the map
            if (token[0] == '_'){  //nonterminal found
                string nonTerm = token;  

		std::cout << "token is: " << token << std::endl;		
		std::cout << "inserting into map..." << std::endl;	
    		//map <symbol, vector<alternate> > grammar; is map definition
		
		vector<alternate> twoDArray;
		vector<string> thealt;
		
		thealt.push_back("a1");  //add dummy elements to vector
		thealt.push_back("b2");

		twoDArray.push_back(thealt); //adds alts into main vector
		int dummy = 0;  //dummy statement for debugging purposes
		
		//add the mapping between _nonTerminal and its possible alts
		grammar.insert({ nonTerm, twoDArray });


		std::cout << "done adding nonTerminal " << nonTerm << " to map" << std::endl;
                
                } //end if
            } //while gfile.good
    }//while isopen
    
    else {
	//report error and quit program
        cout << "Couldn't open file! Make sure to include 'grammars/' before file name" << endl;
    }


    cout << "Done!" << endl;
    return 0;
}
