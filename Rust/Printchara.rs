// import namespace of needed
use std::io;
use std::path::Path;
use std::fs::File;
use std::io::Write;

// Entry point
fn main() {
    // set variables
    let mut num = String::new();
    let mut filename = String::new();
    let mut void = String::new();

    // Ask how many A's should be written
    // and the name of the file
    println!("How many 'A' should be written to a file: ");
    io::stdin()
        .read_line(&mut num)
        .expect("Failed to read line");
    let num: u32 = num.trim().parse().expect("Failed to parse string");

    println!("What is the name for the file: ");
    io::stdin()
        .read_line(&mut filename)
        .expect("Failed to read line");

    let file_path: String = filename.trim().to_string();

    // Create a file and write to it then close
    writefile(file_path, num).expect("Failed to write file");

    // If previous operation completed then press any key to exit
    println!("Operation Completed. Press Enter to exit.");
    io::stdin()
        .read_line(&mut void)
        .expect("Failed to read line");
}

// Have a another function to handle exceptions
fn writefile(filename: String, num: u32) -> std::io::Result<()> {
    // Get directory and add the file name
    let full_path = Path::new(&filename);
    let mut file = File::create(&full_path)?;

    let mut counter = 0;
    while counter < num {
        file.write("A".as_bytes())?;
        counter += 1;
    }
    return Ok(());
}
