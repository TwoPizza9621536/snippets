// Define any preprocessor header files
#include <iostream>
#include <fstream>
#include <string>

// define the standard library unless you name
// your function after std functions

using namespace std;

// Entry point
int main(int argc, char **argv)
{
// Set variables
int num = 0;
string filename;

    // Ask how many A's should be written
    // and the name of the file
    cout << "How many 'A' should be written to a file: " << endl;
    cin >> num;

    cout << "What is the name for the file: " << endl;
    cin >> filename;

    // Create a file and write to it then close it
    ofstream file;

    file.open(filename);

    for (int i = 0; i < num; i++)
    {
        file << 'A';
    }

    file.close();

    // If previous operation completed then press any key to exit
    cout << "Operation Completed. Press Enter to exit.";
    cin.get();
    cin.ignore();

    return 0;
}

