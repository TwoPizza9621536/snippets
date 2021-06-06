// SPDX-FileCopyrightText: Copyright (c) 2021 Sam W
// SPDX-License-Identifier: MIT
/**
 * Copyright (c) 2021 Sam W
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to
 * deal in the Software without restriction, including without limitation the
 * rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
 * sell copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 * IN THE SOFTWARE.
 */

// Import the standard library components
// This is the similar to c/c++ and alike
// languages
import std.stdio;
import std.string;
import std.file;

void main()
{
    // Set variables
    int num = 0;
    string filename;

    // Ask how many A's should be written
    // and the name of the file
    writeln("How many 'A' should be written to a file: ");
    readf(" %d\n", &num);

    writeln("What is the name for the file: ");
    readf(" %s\n", &filename);

    // Create a file and write to it then close it
    File file = File(filename, "w");

    for (int i = 0; i < num; i++)
    {
        file.write('A');
    }

    writeln("Operation Completed. Press Enter to exit.");
    readln();
}
