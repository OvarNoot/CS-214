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

