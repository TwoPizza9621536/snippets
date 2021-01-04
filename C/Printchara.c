// Define any preprocessor header files
#include <stdio.h>
#include <stdlib.h>
#include <conio.h>

int main(int argc, char **argv)
{
    int num = 0;
    char filename[23];

    printf("How many 'A' should be written to a file: \n");
    scanf("%d", &num);

    printf("What is the name for the file: (Must be 20 characters excluding .txt): \n");
    fgets(filename, sizeof(filename), stdin);

    FILE *fptr;

    fptr = fopen(filename, "w");

    for (size_t i = 0; i < num; i++)
    {
        fprintf(fptr, "%c", 'A');
    }

    fclose(fptr);

    printf("Operation Completed. Press Enter to exit.\n");
    getchar();

    return 0;
}
