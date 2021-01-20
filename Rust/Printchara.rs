use std::io;
use std::path::Path;
use std::fs::File;
use std::io::Write;

fn main() {
    let mut num = String::new();
    let mut filename = String::new();
    let mut void = String::new();

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

    writefile(file_path, num).expect("Failed to write file");

    println!("Operation Completed. Press Enter to exit.");
    io::stdin()
        .read_line(&mut void)
        .expect("Failed to read line");
}

fn writefile(filename: String, num: u32) -> std::io::Result<()> {
    let full_path = Path::new(&filename);
    let mut file = File::create(&full_path)?;

    let mut counter = 0;
    while counter < num {
        file.write("A".as_bytes())?;
        counter += 1;
    }
    return Ok(());
}
