// Define any namespace
using System;
using System.IO;

// In CS9 you can write in the Top-level
// below is the entry point

// C# is a Java like language that is closer to Kotlin.

/* namespace program
 * {
 *     public class myclass
 *     {
 *         static void main()
 *         {
 *              Function();
 *         }
 *     }
 * }
 */

// Ask how many A's should be written
// and the name of the file

Console.WriteLine("How many 'A' should be written to a file: ");
string num = Console.ReadLine();

// set varables
int newnum = 0;

// Fast Parsing without quiting
while (!int.TryParse(num, out newnum))
{
    Console.WriteLine("Please enter a positive number: ");
    num = Console.ReadLine();
}

Console.WriteLine("What is the name for the file: ");
string filename = Console.ReadLine();

// Get directory and add the file name
string currentDirName = Directory.GetCurrentDirectory();
string pathString = Path.Combine(currentDirName, filename);

// Create a file and write to it then close it
using (FileStream fs = File.Create(pathString))
{

    for (int i = 0; i < newnum; i++)
    {
        fs.WriteByte((byte)'A');
    }
}


// If previous operation completed then press any key to exit
Console.WriteLine("Operation Complete. Press any key to exit.");
Console.ReadKey();
