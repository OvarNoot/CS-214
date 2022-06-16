# computes the area of rectangle 
#
# Haim Hong
# Jan 15 2022
###############################################################

# function computes area of rectangle, given its width and legnth
# param width legnth
# returns area of rectangle
def rectangleArea(width, length)
    width * length
end

if __FILE__ == $0
   puts "To compute the area of a circle," # prints out string with new line
   print " enter its width: " # prints out string with no new line 
   width = gets.chomp.to_f # read user input wiht chomp removing new line and changes to float
   print " enter its length: " # prints out string with no new line 
   length = gets.chomp.to_f # read user input wiht chomp removing new line and changes to float
   print "The rectangle's area is: " # print out string
   puts rectangleArea(width, length) # prints out result from calling function with new line 
end