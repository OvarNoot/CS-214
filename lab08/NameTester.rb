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

