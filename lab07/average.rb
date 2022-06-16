# average.rb averages the values of an array of doubles.
# Precondition: theArray is an array of numbers
# Output: the average of the values in theArray
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by:: Haim Hong
# Date: Feb 24
########################################################

###############################################
# sum() sums the values in an array
# Receive: anArray, an array of numbers
# Return: the sum of the values in anArray.
################################################

# Define sum() method here
def sum anArray
   total = 0.0
   for i in anArray do # loops around until it fully goes through array
      total += i # adds up to total 
   end
   return total # return total
end
# Document and define average() method here
def average anArray
   if anArray.size <= 0 # check if the array is empty or not
      return 0.0 
   else 
      return sum(anArray) / anArray.size # return the average
   end
end

def main
   # Define array0 as an Array containing no values
   array0 = []
   # Define array1 as an Array containing 9.0, 8.0, 7.0, 6.0
   array1 = [9.0, 8.0, 7.0]
   puts "sum 0 is: #{ sum(array0) }\n"
   puts "sum 1 is: #{ sum(array1) }\n"

   puts "average 0 is: #{ average(array0) }\n"
   puts "average 1 is: #{ average(array1) }\n"
end

main
   
