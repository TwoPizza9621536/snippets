// Define any preprocessor header files
#include <stdio.h>
#include <stdlib.h>
#include <conio.h>

int main(int argc, char **argv)
{
<<<<<<< HEAD
    // Set variables
    int num = 0;
    char filename[23];
=======
// Set variables
int num = 0;
char filename[23];
>>>>>>> 6e3657851870a5234ba1b22941a98a4d87e046de

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
<<<<<<< HEAD
    printf("Operation Completed. Press any to exit.\n");
=======
    printf("Operation Completed. Press Enter to exit.\n");
>>>>>>> 6e3657851870a5234ba1b22941a98a4d87e046de
    getchar();

    return 0;
}
