# Define modules if needed

# Python does not need an entry point below is the main

# if __name__ == "__main__":
# execute only if run as a script
# main()

# Ask how many A's should be written
# and the name of the file

print("How many 'A' should be written to a file: ")
num = input()

print("What is the name for the file: ")
filename = input()

# Create a file and write to it then close it
with open(filename, 'w+') as f:
    for i in range (int(num)):
        f.write('A')
        i = i + 1

f.close()

# If previous operation completed then press Enter to exit
print("Operation Completed. Press Enter to exit.")
input()
