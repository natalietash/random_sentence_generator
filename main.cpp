/*
HW 2 - Random Sentence Generator
by Natalie Tashchuk for Dr Libby's CS 352 Programming Languages
10/17/2022

This program:
1) reads in a grammar file from stdin
2) parse file into properly formatted map between symbol and alternate options

to implement:
3) iterate through grammar and print symbol + alts (currently using gdb to view)
4) generate a random sentence in the language of the grammar to stdout

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
	  string startsymbol;
	  string nonTerm;
  	string altString;
    int j = 0;

    using symbol = string;  //call a string a symbol
    using alternate = vector<symbol>;  //naming a vector of symbols an 'alternate'
    //vector is a growable array

    map <symbol, vector<alternate> > grammar;
    //maping a symbol (_NonTerm) to a vector of string vectors


    cout << "Enter a .g grammar file to read from " << endl;
    cin >> filename;
    
    gfile.open(filename);  //open the file for reading

 
    //vector<alternate> twoDArray;

	if (gfile.is_open() && (gfile.good())) {
		gfile >> token;  //grab start symbol
		startsymbol = token;  
		//gfile >> token;  //grab first nonterm (should == startsymbol) because startsymbol repeats twice
	}

    if (gfile.is_open()){
    	while (gfile.good()){ //while not EOF

	    //counting number of loop iterations
	    std::cout << "j = " << j << std::endl;
	    j++;
            
        //use ifstream in same exact way as cin to read file
	    gfile >> token; //grab token


        //parse the token into the map
        if (token[0] == '_'){  //nonterminal at beginning of line found
            nonTerm = token; 

    		vector<string> the_alts;
			vector<alternate> twoDArray;

			std::cout << "token is: " << token << std::endl;		
			std::cout << "inserting into map..." << std::endl;	
    		//map <symbol, vector<alternate> > grammar; is map definition

			gfile >> token;  //grab ->, throw away symbol
			if (token != "->"){
				std::cout << "ERROR!!!!!!!!!!!!!!!!!!!!!!!"  <<std::endl;
			}	
		
			//gfile >> token;  //get -> token
		
			while (token != ";"){
				if (token == "->") {
					gfile >> token;  //skip arrow
				}
			
				//not an or | or end of line ; (push string when these occur)
				if ((token != "|") && (token != ";")) {
					altString = altString + " " + token;  //grow alt string
					gfile >> token;  //get next token
				}
			
				if (token == "|"){
					//push token because we found an or
					the_alts.push_back(altString);  //push this altstring into the list of alts
					altString = ""; //clear alt string to be used again
					gfile >> token;  //grab next token

					int dummy = 0;  //dummy statement for debugging purposes
				}

				if (token == ";"){
					//push final token for this symbol 
					the_alts.push_back(altString); 
					altString = ""; //clear alt string to be used again
				}


			} //end while != ;

		    //; has been found, so push entire alt list to 2d array
			twoDArray.push_back(the_alts); //adds full list of alts to the outer vector
		
			//add the mapping between _nonTerminal and its possible alts (the 2d array)
			grammar.insert({ nonTerm, twoDArray });

			std::cout << "done adding nonTerminal " << nonTerm << " to map" << std::endl;

			//gfile >> token;  //get next token, should be another _NonTerm or EOF 
                
            } //end if token[0] == _
        } //while gfile.good
    }//if isopen
    
    else {
	    //report error and quit program
        cout << "Couldn't open file! Make sure to include 'grammars/' before file name" << endl;
    }

	//done creating grammar, now iterate through it 
	cout << "\n \n Test Nonterminal value: " << endl;
	///vector<string> testVector = grammar["_Greeting"];
   // int size = testVector.size();
  ///  for(string& v : testVector){
 //       cout << "\n" << v << endl;
  //  }
	




    cout << "Done!" << endl;
    return 0;
}
