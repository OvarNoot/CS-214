Script started on 2022-03-08 16:47:57-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="129" LINES="24"]
]0;hh35@gold17: ~/cs214/lab/lab08[01;32mhh35@gold17[00m:[01;34m~/cs214/lab/lab08[00m$ cat NameTEster.rb
cat: NameTEster.rb: No such file or directory
]0;hh35@gold17: ~/cs214/lab/lab08[01;32mhh35@gold17[00m:[01;34m~/cs214/lab/lab08[00m$ cat NameTester.rb
# NameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Haim Hong
# Date: March 8 2022
####################################################

require 'test/unit/assertions'   # needed for assert
include Test::Unit::Assertions

# Replace this line with the declaration of class Name
class Name 
   def initialize (first, middle, last)
      @first, @middle, @last = first, middle, last #puts each into first middle last
   end

   attr_reader :first, :middle, :last # getters

   def fullName
      @first + " " + middle + " " + @last # adds the names into one
   end

   def print
      puts fullName # puts out the full name 
      fullName # returns the fullName
   end
end

def testName
   name = Name.new("John", "Paul", "Jones")

   assert name.first == "John", "first failed"
   assert name.middle == "Paul", "middle failed"
   assert name.last == "Jones", "last failed"
   assert name.fullName == "John Paul Jones", "fullName failed"
   assert name.print == "John Paul Jones", "print failed"
   
   print "All tests passed!\n"
end

testName

]0;hh35@gold17: ~/cs214/lab/lab08[01;32mhh35@gold17[00m:[01;34m~/cs214/lab/lab08[00m$ d ruby NameTester.rb
John Paul Jones
All tests passed!
]0;hh35@gold17: ~/cs214/lab/lab08[01;32mhh35@gold17[00m:[01;34m~/cs214/lab/lab08[00m$ exit

Script done on 2022-03-08 16:53:12-05:00 [COMMAND_EXIT_CODE="0"]
