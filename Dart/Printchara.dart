// import modules if needed
import 'dart:core';
import 'dart:io';

// import 'package:print_chara/print_chara.dart' as print_chara;

// Entry point
void main() {
    // Ask how many A's should be written
    // and the name of the file
    // Dart is C and javascript like language.

    print("How many 'A' should be written to a file: ");
    var num = stdin.readLineSync();

    var newnum = int.parse(num);
    assert(newnum is int);

    print('What is the name for the file: ');
    var filename = stdin.readLineSync();

    // Create a file and write to it then close it
    // The writting process is similar to Java/Kotlin
    var file = File(filename);
    var stream = file.openWrite();
    for (var i = 0; i < newnum; i++) {
        stream.writeCharCode(65);
    }
    stream.close();

    // If previous operation completed then press any key to exit
    print('Complete. Press Enter to exit.');
    stdin.readLineSync();
}
