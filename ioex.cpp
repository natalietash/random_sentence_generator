#include <iostream>
#include <fstream>
#include <string>

int main (){
std::ifstream myfile;
myfile.open("grammars/weather.g");
std::string myline;
if ( myfile.is_open() ) {
while ( myfile ) { // equivalent to myfile.good()
std::getline (myfile, myline);
std::cout << myline << '\n';
}
}
else {
std::cout << "Couldn't open file\n";
}
return 0;      }