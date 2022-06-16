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

