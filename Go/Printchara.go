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
