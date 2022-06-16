Script started on 2022-01-13 16:10:19-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;hh35@remotel1: ~/cs214/Lab01[01;32mhh35@remotel1[00m:[01;34m~/cs214/Lab01[00m$ d cat circle_area.rb
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
end]0;hh35@remotel1: ~/cs214/Lab01[01;32mhh35@remotel1[00m:[01;34m~/cs214/Lab01[00m$ d ruby circle_area.rb
To compute the area of a circle,
 enter its radius: 1
The circle's area is: 3.1415927
]0;hh35@remotel1: ~/cs214/Lab01[01;32mhh35@remotel1[00m:[01;34m~/cs214/Lab01[00m$ ruby circle_area.rb
To compute the area of a circle,
 enter its radius: 2
The circle's area is: 12.5663708
]0;hh35@remotel1: ~/cs214/Lab01[01;32mhh35@remotel1[00m:[01;34m~/cs214/Lab01[00m$ ruby circle_area.rb
To compute the area of a circle,
 enter its radius: 2.4 5
The circle's area is: 19.634954375
]0;hh35@remotel1: ~/cs214/Lab01[01;32mhh35@remotel1[00m:[01;34m~/cs214/Lab01[00m$ ruby circle_area.rb  
To compute the area of a circle,
 enter its radius: 4.99999
The circle's area is: 78.53950334104418
]0;hh35@remotel1: ~/cs214/Lab01[01;32mhh35@remotel1[00m:[01;34m~/cs214/Lab01[00m$ exit
exit

Script done on 2022-01-13 16:10:59-05:00 [COMMAND_EXIT_CODE="0"]
