Script started on 2022-03-17 12:50:18-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="116" LINES="24"]
]0;hh35@gold28: ~/cs214/lab/lab09/ruby[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab09/ruby[00m$ d cat Name.rb N    rb nameTester.rb
# Name.rb is a class with its operations
#
# Completed by: Haim Hong
# Date: March 17 2022
###################s################################
module Names
    class Name
        def initialize(first, middle, last)
        @first, @middle, @last = first, middle, last
        end
    
        attr_reader :first, :middle, :last
    
        def fullName
        @first + " " + @middle + " " + @last
        end
    
        def print
        puts fullName
        fullName
        end
    end
end# nameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Haim Hong
# Date: March 17 2022
####################################################

require 'test/unit/assertions'
include Test::Unit::Assertions

#require './Name'
load './Name.rb' # loads the program




def testName
   name = Names::Name.new("John", "Paul", "Jones")

   assert name.first == "John", 
           "first failed"
   assert name.middle == "Paul",
           "middle failed"
   assert name.last == "Jones",
           "last failed"
   assert name.fullName == "John Paul Jones",
           "fullName failed"
   assert name.print == "John Paul Jones",
           "print failed"
   
   print "All tests passed!\n"
end

testName

]0;hh35@gold28: ~/cs214/lab/lab09/ruby[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab09/ruby[00m$ ruby nameTester.rb
John Paul Jones
All tests passed!
]0;hh35@gold28: ~/cs214/lab/lab09/ruby[01;32mhh35@gold28[00m:[01;34m~/cs214/lab/lab09/ruby[00m$ exit

Script done on 2022-03-17 12:50:57-04:00 [COMMAND_EXIT_CODE="0"]
