#! /usr/bin/ruby
# logTable.rb displays a table of logarithms
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Haim Hong
# Date: Feb 3
#
# Input:  The start, stop and increment values
# Precondition: The start value is less than the stop value, 
#     and the increment is greater than 0
# Output: A table of logarithms from start to stop, with increment
#     as the step value


if __FILE__ == $0
   print "Enter the start value: "
   start = gets.to_f
#### ADD CODE HERE TO GET THESE VALUES AS NUMBERS
   print "Enter the stop value: "
   stop = gets.to_f
####
   print "Enter the increment value: "
   increment = gets.to_f
####   
   
#  Replace this line with a loop to display the log table 
   while start <= stop
      puts "\nThe logarithms of #{start.to_s} is #{Math.log10(start)}" # outputs the results
      start += increment # increment start by increment
   end
end

