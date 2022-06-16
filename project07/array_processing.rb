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
end