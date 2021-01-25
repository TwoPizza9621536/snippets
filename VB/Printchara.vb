Imports System
Imports System.IO

Module Printchara
    Sub Main()
        Console.WriteLine("How many 'A' should be written to a file: ")
        Dim num As String = Console.ReadLine()

        Dim newnum As Integer = 0

        While Not Integer.TryParse(num, newnum)
            Console.WriteLine("Please enter a positive number: ")
            num = Console.ReadLine()
        End While

        Console.WriteLine("What is the name for the file: ")
        Dim filename As String = Console.ReadLine()

        Dim currentDirName = Directory.GetCurrentDirectory()
        Dim pathString = Path.Combine(currentDirName, filename)

        Using fs As Filestream = File.Create(pathString)
            For i As Integer = 0 To newnum
                fs.WriteByte(Convert.ToByte("A"))
            Next i
        End Using

        Console.WriteLine("Operation Complete. Press any key to exit.")
        Console.ReadKey()
    End Sub
End Module
