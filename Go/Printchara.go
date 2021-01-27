/**
 * Copyright (c) 2021 Sam W
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 * the Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

package main

import (
    "fmt"
    "os"
    "path/filepath"
    "bufio"
    "log"
    "strconv"
)

func main()  {
    reader := bufio.NewReader(os.Stdin)

    fmt.Println("How many 'A' should be written to a file: ")
    num, _ := reader.ReadString('\n')

    newnum, _ := strconv.ParseInt(num, 10, 64)

    fmt.Println("What is the name for the file: ")
    filename, _ := reader.ReadString('\n')

    fullpath := filepath.Base(filename)
    file, err := os.Create(fullpath)
    if err != nil {
        log.Fatal(err)
    }

    var i int64
    for i = 0; i < newnum; i++ {
        file.WriteString("A")
    }
    file.Close()
}
