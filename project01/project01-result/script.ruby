Script started on 2022-01-17 16:57:54-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="98" LINES="24"]
]0;hh35@remotel1: ~/cs214/project/project01[01;32mhh35@remotel1[00m:[01;34m~/cs214/project/project01[00m$ cat rectnagl    angle_area.rb
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
end]0;hh35@remotel1: ~/cs214/project/project01[01;32mhh35@remotel1[00m:[01;34m~/cs214/project/project01[00m$ d ./rectangle+ _area.rb                   ruby rectangle_area.rb
To compute the area of a circle,
 enter its width: 4.55 
 enter its length: 3.5
The rectangle's area is: 15.75
]0;hh35@remotel1: ~/cs214/project/project01[01;32mhh35@remotel1[00m:[01;34m~/cs214/project/project01[00m$ ruby rectnagle_area.rb
[1mTraceback[m (most recent call last):
ruby: [1mNo such file or directory -- rectnagle_area.rb ([1;4mLoadError[m[1m)[m
]0;hh35@remotel1: ~/cs214/project/project01[01;32mhh35@remotel1[00m:[01;34m~/cs214/project/project01[00m$ b ruby rectangle_area.rb
To compute the area of a circle,
 enter its width: 4.9999
 enter its length: 5.9999
The rectangle's area is: 29.998900010000003
]0;hh35@remotel1: ~/cs214/project/project01[01;32mhh35@remotel1[00m:[01;34m~/cs214/project/project01[00m$ exit
exit

Script done on 2022-01-17 16:59:10-05:00 [COMMAND_EXIT_CODE="0"]
