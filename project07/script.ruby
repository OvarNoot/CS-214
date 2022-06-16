Script started on 2022-02-25 13:50:22-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="144" LINES="23"]
]0;hh35@gold27: ~/cs214/project/project07[01;32mhh35@gold27[00m:[01;34m~/cs214/project/project07[00m$ cat ru  array_processi   ssing.rb
#
# Gets input from user of its size and values for array in functions
# outputs the value that's in the array
#
# Haim Hong
# Feb 24
###########3##

# it pritns arrays
def printArray array
    print "\nPrinting Arrays"
    for i in array do # goes through loop to print each value of arrays
        puts i.to_s # in each seperate lines
    end
end

# gets empty array, size
# reads value from user
# stores value into the array
def readArray array, size
    for i in 1..size do # loops until it eaches the size
        puts "Enter the value for array: "
        array[i] = gets.to_i # stores the user input to the array
    end
end

if __FILE__ == $0
    puts "Enter the size of array: "
    size = gets.to_i # gets the user input
    array = Array.new(size) #set the size of new array with user input

    readArray(array, size) # calls read array
    
    printArray(array) # calls print array 
end]0;hh35@gold27: ~/cs214/project/project07[01;32mhh35@gold27[00m:[01;34m~/cs214/project/project07[00m$ ruby array_probe  cessing.rb
Enter the size of array: 
4
Enter the value for array: 
1
Enter the value for array: 
2
Enter the value for array: 
3
Enter the value for array: 
4

Printing Arrays
1
2
3
4
]0;hh35@gold27: ~/cs214/project/project07[01;32mhh35@gold27[00m:[01;34m~/cs214/project/project07[00m$ ruby array_processing.rb
Enter the size of array: 
6
Enter the value for array: 
11
Enter the value for array: 
22
Enter the value for array: 
33
Enter the value for array: 
44
Enter the value for array: 
55
Enter the value for array: 
66

Printing Arrays
11
22
33
44
55
66
]0;hh35@gold27: ~/cs214/project/project07[01;32mhh35@gold27[00m:[01;34m~/cs214/project/project07[00m$ ruby array_processing.rb
Enter the size of array: 
4
Enter the value for array: 
41
Enter the value for array: 
32
Enter the value for array: 
63
Enter the value for array: 
35

Printing Arrays
41
32
63
35
]0;hh35@gold27: ~/cs214/project/project07[01;32mhh35@gold27[00m:[01;34m~/cs214/project/project07[00m$ exit

Script done on 2022-02-25 13:50:53-05:00 [COMMAND_EXIT_CODE="0"]
