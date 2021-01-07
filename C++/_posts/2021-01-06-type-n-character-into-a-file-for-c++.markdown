---
layout: post
title: Type n character into a file for C++
---

This is a snippet for Syntax highlighting and comparing languages.
Below is the snippet for C.

{% highlight cpp %}
// Define any preprocessor header files
#include <iostream>
#include <fstream>
#include <string>

// define the standard libary unless you name
// your function after std functions

using namespace std;

// Entry point
int main(int argc, char **argv)
{
    // Set varables
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
    cout << "Operation Completed. Press any key to exit." << endl;
    cin.ignore();
    cin.get();

    return 0;
}
{% endhighlight %}

[Click Here]({{ "assets/src/C++/Printchara.cpp" | relative_url }}){:target="blank"} to download the file.
