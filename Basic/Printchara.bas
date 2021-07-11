' SPDX-FileCopyrightText: Copyright (c) 2021 Sam W
' SPDX-License-Identifier: MIT
/''
 ' Copyright (c) 2021 Sam W
 '
 ' Permission is hereby granted, free of charge, to any person obtaining a copy
 ' of this software and associated documentation files (the "Software"), to
 ' deal in the Software without restriction, including without limitation the
 ' rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
 ' sell copies of the Software, and to permit persons to whom the Software is
 ' furnished to do so, subject to the following conditions:
 '
 ' The above copyright notice and this permission notice shall be included in
 ' all copies or substantial portions of the Software.
 '
 ' THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 ' IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 ' FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 ' AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 ' LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 ' FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 ' IN THE SOFTWARE.
 '/

Dim num as integer = 0
Dim filename As string

print "How many 'A' should be written to a file: "

Dim newnum As String

Line Input newnum

num = ValInt(newnum)

Print "What is the name for the file: "

Line Input filename

Dim ff As Integer

ff = FreeFile

Open filename For Output Encoding "utf-8" As #ff

For i As integer = 0 To num Step 1
    Write #ff, 65
Next i
