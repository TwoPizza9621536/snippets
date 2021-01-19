use std::io;

fn main() {
    let mut num = String::new();
    let mut filename = String::new();

    println!("How many 'A' should be written to a file: ");
    io::stdin()
        .read_line(&mut num)
        .expect("Failed to read line");
    let num: num.trim().parse() {
        Ok(num) => num,
        Err(_) => 
    }

    println!("What is the name for the file: ");
    io::stdin()
        .read_line(&mut filename)
        .expect("Failed to read line");
}
