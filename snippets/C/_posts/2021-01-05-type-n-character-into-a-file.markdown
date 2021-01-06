---
layout: post
title: Type n character into a file
---

This is a snippet for Syntax highlighting and comparing languages.
Below is the snippet for C.

{% highlight cpp %}
// Define any preprocessor header files
#include <stdio.h>
#include <stdlib.h>
#include <conio.h>

int main(int argc, char **argv)
{
    // Set varables
    int num = 0;
    char filename[23];

    // Ask how many A's should be written
    // and the name of the file
    printf("How many 'A' should be written to a file: \n");
    scanf("%d", &num);

    printf("What is the name for the file: (Must be 20 characters excluding .txt): \n");
    fgets(filename, sizeof(filename), stdin);

    // Create a file and write to it then close it
    FILE *fptr;

    fptr = fopen(filename, "w");

    for (size_t i = 0; i < num; i++)
    {
        fprintf(fptr, "%c", 'A');
    }

    fclose(fptr);

    // If previous operation completed then press any key to exit
    printf("Operation Completed. Press Enter to exit.\n");
    getchar();

    return 0;
}
{% endhighlight %}

[Click Here]({{ "assets/src/C/Printchara.c" | relative_url }}) to download the file.
