Script started on 2022-01-27 15:23:04-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="123" LINES="24"]
]0;hh35@gold18: ~/cs214/lab/lab03[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab03[00m$ cat year_codes.rb
#! /usr/bin/ruby
# year_codes.rb translates an academic year into a numeric code
# Begun by: Dr. Nelesen, for CS 214 at Calvin College 
# Haim Hong
# Jan 27 2022
################################################################

# Input:  The name of an academic year
# Precondition: The academic year is a string with a value of freshman, 
#   sophomore, junior or senior
# Output: The corresponding integer code for the given academic year

#  Replace this line with the definition of function yearCode() 
def yearCode(y)
   if y =~ /freshman/ then # for string comparison
      return 1
   elsif y =~ /sophomore/ then
      return 2
   elsif y =~ /junior/ then
      return 3
   elsif y =~ /senior/ then # when typed supersenior it gives still 4
      return 4
   else  
      return 0
   end
end
if __FILE__ == $0
   print "Enter the year: "
   year = gets
   print "Numeric code is: "
   puts yearCode(year)
end

]0;hh35@gold18: ~/cs214/lab/lab03[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab03[00m$ . ruby year_codes.rb
Enter the year: freshman
Numeric code is: 1
]0;hh35@gold18: ~/cs214/lab/lab03[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab03[00m$ ruby year_codes.rb
Enter the year: sophomore
Numeric code is: 2
]0;hh35@gold18: ~/cs214/lab/lab03[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab03[00m$ ruby year_codes.rb
Enter the year: junior
Numeric code is: 3
]0;hh35@gold18: ~/cs214/lab/lab03[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab03[00m$ ruby year_codes.rb
Enter the year: senior
Numeric code is: 4
]0;hh35@gold18: ~/cs214/lab/lab03[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab03[00m$ ruby year_codes.rb
Enter the year: supersenior
Numeric code is: 4
]0;hh35@gold18: ~/cs214/lab/lab03[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab03[00m$ ruby year_codes.rb
Enter the year: graduate
Numeric code is: 0
]0;hh35@gold18: ~/cs214/lab/lab03[01;32mhh35@gold18[00m:[01;34m~/cs214/lab/lab03[00m$ exit

Script done on 2022-01-27 15:23:43-05:00 [COMMAND_EXIT_CODE="0"]
