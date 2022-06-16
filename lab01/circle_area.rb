#! /usr/bin/ruby
# circle_area.rb computes the area of a circle given its radius
# 
# Input: the radius of a circle
# Precondition: the radius is not negative
# Output: the area of the circle.
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Haim Hong  
# Date: Jan 13 2022
###############################################################

# function circleArea returns a circle's area, given its radius
# Parameters: r, a number
# Precondition: r > 0.
# Returns: the area of a circle whose radius is r.
PI = 3.1415927
def circleArea(r)
    PI * r ** 2 
end

if __FILE__ == $0
   puts "To compute the area of a circle," # prints out string with new line
   print " enter its radius: " # prints out string with no new line 
   radius = gets.chomp.to_f # read user input wiht chomp removing new line and changes to float
   print "The circle's area is: " # print out string
   puts circleArea(radius) # prints out result from calling function with new line 
end