Script started on 2022-03-10 16:45:05-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="80" LINES="24"]
]0;hh35@gold13: ~/cs214/project/project08[01;32mhh35@gold13[00m:[01;34m~/cs214/project/project08[00m$ ruby NameTester.rb[1Pcat NameTester.rb
# NameTester.rb tests class Name and its operations
#
# Completed by: Haim Hong
# Date: March 10 2022
####################################################

require 'test/unit/assertions'   # needed for assert
include Test::Unit::Assertions

# Replace this line with the declaration of class Name
class Name 
   def initialize (first, middle, last)
      @first, @middle, @last = first, middle, last #puts each into first middle last
   end

   attr_accessor :first, :middle, :last # becomes both asaccessor can have both properties

   def fullName
      @first + " " + @middle + " " + @last # adds the names into one
   end

   def print
      puts fullName # puts out the full name 
      fullName # returns the fullName
   end

   def lfmi #returns last to first name with middle initials
      @last + ", " + @first + ", " + @middle[0] + "."
   end

   def readName # reads each of the name first middle last
      puts "Enter First Name: \n"
      @first = gets.chomp
      puts "Enter Middle Name: \n"
      @middle = gets.chomp
      puts "Enter Last Name: \n"
      @last = gets.chomp
   end
end

def testName
   name = Name.new("John", "Paul", "Jones")

   assert name.first == "John", "first failed"
   assert name.middle == "Paul", "middle failed"
   assert name.last == "Jones", "last failed"
   assert name.fullName == "John Paul Jones", "fullName failed"
   assert name.print == "John Paul Jones", "print failed"
   
   # attr_accessor
   name.first = "Sam"
   name.middle = "Josh"
   name.last = "Billy"
   # checking if read into it correctly
   assert name.first == "Sam", "first failed"
   assert name.middle == "Josh", "middle failed"
   assert name.last == "Billy", "last failed"
   assert name.print == "Sam Josh Billy", "print failed"

   # last first middle initials
   assert name.lfmi == "Billy, Sam, J.", "lmfi failed"

   puts "readName using Sam Josh Billy\n"
   # readName to read the names
   name.readName
   # check if its the right ones using previous names
   assert name.first == "Sam", "first failed"
   assert name.middle == "Josh", "middle failed"
   assert name.last == "Billy", "last failed"

   print "All tests passed!\n"
end

testName

]0;hh35@gold13: ~/cs214/project/project08[01;32mhh35@gold13[00m:[01;34m~/cs214/project/project08[00m$ cat NameTester.rb[1@ruby NameTester.rb
John Paul Jones
Sam Josh Billy
readName using Sam Josh Billy
Enter First Name: 
Sam
Enter Middle Name: 
Josh
Enter Last Name: 
Billy
All tests passed!
]0;hh35@gold13: ~/cs214/project/project08[01;32mhh35@gold13[00m:[01;34m~/cs214/project/project08[00m$ exit

Script done on 2022-03-10 16:45:14-05:00 [COMMAND_EXIT_CODE="0"]
